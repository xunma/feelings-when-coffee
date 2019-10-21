# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    # byebug
    feeling_id = params[:feeling_id]
    @like = Like.new(feeling_id: feeling_id, user_id: current_user.id)
    respond_to do |format|
      if @like.save
        @feeling = Feeling.find(feeling_id)
        format.js { render 'likes/like.js.erb', feeling: @feeling }
      else
        byebug
      end
    end
  end

  def destroy
    like = Like.find(params[:id])
    @feeling = Feeling.find(like.feeling_id)
    respond_to do |format|
      if like.destroy
        format.js { render 'likes/like.js.erb', feeling: @feeling }
      end
   end
  end

end
