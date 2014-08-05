class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new
    @new_task = TaskList.new
  end

  def create

    # @task_list = TaskList.create(name: params[:task_list][:name])
    # if @task_list.valid?
    #   @task_list.save
    #   redirect_to root_path, notice: "Task List was created successfully!"
    # else
    #   redirect_to task_list_new_path, alert: "Your task list could not be created"
    # end

    @new_task = TaskList.new
    @new_task.name = params[:task_list][:name]

    if @new_task.save
      p "+"*100
      flash[:notice] = "Task List was created"
      redirect_to "/"
    else
      p "="*100
      @new_task
      render :new
    end
  end


end