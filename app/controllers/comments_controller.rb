class CommentsController < ApplicationController
  include CableReady::Broadcaster
  before_action :set_task, only: :create

  def create
    @comment = @task.comments.new(comment_params.merge(user: current_user))
    if @comment.save
      cable_ready[TaskChannel].insert_adjacent_html(
        selector: '#comments',
        html: render_to_string(@comment)
      )

      cable_ready[TaskChannel].outer_html(
        selector: '#new-comment',
        html: render_to_string(partial: 'comments/form', locals: { new_comment: Comment.new })
      )
    else
      cable_ready[TaskChannel].outer_html(
        selector: '#new-comment',
        html: render_to_string(partial: 'comments/form', locals: { new_comment: @comment }),
        focus_selector: '#comment-body'
      )
    end

    cable_ready.broadcast_to(@task)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_task
    @list = current_team.lists.find(params[:list_id])
    @task = @list.tasks.find(params[:task_id])
    redirect_to root_path unless @task
  end
end
