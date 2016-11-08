class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(task_params)
    redirect_to projects_path
  end

  private
    def task_params
      params.require(:task).permit(:name)
    end
end
