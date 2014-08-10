class TasksController < ApplicationController
  def new
    @task_list = TaskList.find(params[:task_list_id])
    @task = Task.new
    @task.task_list_id = @task_list.id
  end

  def create
    @task = Task.new
    @task.name = params[:task][:description]

    if @task.valid?
      if @task.save
        flash[:success] = "Task was created."
        redirect_to "/"
      else
        @task
        render :new
      end
    else
      flash[:error] = "Your task could not be created."
      render :new
    end
  end
end