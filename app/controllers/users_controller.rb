# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @owner = find_user
    @feelings = @owner.feelings
  end

  private

  def find_user
    User.find_by(username: params[:username])
  end
end
