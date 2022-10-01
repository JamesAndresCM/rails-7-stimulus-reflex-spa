class TasksController < ApplicationController
  before_action :set_task, only: :show

  def show
    @new_comment = Comment.new
  end

  private

  def set_task
    @list = List.find(params[:list_id])
    @task = @list.tasks.includes(:comments).find(params[:id])
  end
end
