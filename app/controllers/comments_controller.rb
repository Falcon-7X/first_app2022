class CommentsController < ApplicationController
  before_action :set_topic

  def create
    comment = @topic.comments.create! params.required(:comment).permit(:description)
    CommentsMailer.submitted(comment).deliver_later
    redirect_to @topic
  end

  private
    def set_topic
      @topic = Topic.find(params[:topic_id])
    end
end
