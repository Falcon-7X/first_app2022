class CommentsController < ApplicationController
  before_action :set_topic

  def create
    @topic.comments.create! params.required(:comment).permit(:description)
    redirect_to @topic
  end

  private
    def set_topic
      @topic = Topic.find(params[:topic_id])
    end
end
