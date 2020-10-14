class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save!
      # binding.pry
      logger.debug("if文の中に入りました")
      redirect_to tasks_path, notice: "タスクを追加しました！"

    else
      render :new
    end
  end

  def destroy
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :taskImage)
  end
end
