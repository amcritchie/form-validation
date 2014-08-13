class TasksController < ApplicationController

  def index
    @tasks = Task.order(:body)
  end

  def new
    @task_list = TaskList.find(params[:task_list_id])
    @task = Task.new
    @task.task_list_id = @task_list.id
  end

  def create
    @task = Task.new
    @task.body= params[:task][:body]
    @task.due_date = Date.new(params[:due_date][:year].to_i, params[:due_date][:month].to_i, params[:due_date][:day].to_i)
    @task.task_list_id = params[:task_list_id]
    if @task.save
      flash[:success] = "Task was created successfully!"
      redirect_to "/"
    else
      flash[:error] = "Your task could not be created."
      render :new
    end
  end
end

