# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to feelings_path
    else
      raise
      #TODO: puts error message
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :feeling_id)
  end

end
