# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :update]

  def show
    if @user == current_user
      @feelings = @user.feelings
    else
      redirect_to feelings_path
    end
  end

  def update
    @user.color = params[:color]
    @user.save
  end

  private

  def find_user
    @user = User.find_by(username: params[:username])
  end
end
