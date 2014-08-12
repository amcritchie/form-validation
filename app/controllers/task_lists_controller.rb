class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
    @tasks = Task.all
  end

  def new
    @task_list = TaskList.new
  end

  def create

    @task_list = TaskList.new
    @task_list.name = params[:task_list][:name]

    if @task_list.valid?
      if @task_list.save
        flash[:success] = "Task List was created."
        redirect_to "/"
      else
        @task_list
        render :new
      end
    else
      flash[:error] = "Your tasks list could not be created."
      render :new
    end
  end

  def edit
    @task_list = TaskList.find(params[:id])
  end

  def update
    @task_list = TaskList.find(params[:id])
    @task_list.name = params[:task_list][:name]
    if @task_list.save
      flash[:success] = "Task List was updated successfully!"
      redirect_to "/"
    else
      render :edit
    end
  end

end


