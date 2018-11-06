
class TasksController < ApplicationController
  def index
  	@task = Task.new
  	@tasks = Task.all

  end

  def create
  	Task.create params.permit![:task]
  	redirect_to :tasks

  end

  def edit
  	@task = Task.find params[:id] #it will find the data that has the ID of the params clicked
  end

  def update
  	task = Task.find params[:id]
  	if task.update_attributes params.permit![:task]
  		redirect_to tasks_path, :notice => 'Task updated successfully'
  	else

  		redirect_to edit_task_path, :notice => 'There was an error updating your task' #This will redirect to the same page if update is invalid
  	end
  end

  def destroy
  	Task.destroy params.permit![:id]
  	redirect_to tasks_path, :notice => 'Task has been deleted'
  end
end
