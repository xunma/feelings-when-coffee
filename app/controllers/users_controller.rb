# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    if @owner == current_user
      @owner = find_user
      @feelings = @owner.feelings
    else
      redirect_to feelings_path
    end
  end

  private

  def find_user
    User.find_by(username: params[:username])
  end
end
