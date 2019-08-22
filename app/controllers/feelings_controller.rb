# frozen_string_literal: true

class FeelingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @feelings = Feeling.all
    @comment = Comment.new
  end

  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.new(feeling_params)
    @feeling.user = current_user
    if @feeling.save
      redirect_to feelings_path
    else
      redirect_to feelings_path
      #TODO: puts error message
    end
  end

  private

  def feeling_params
    params.require(:feeling).permit(:mood, :wifi_password, :coffee_shop, :music, :drink, :date)
  end

end
