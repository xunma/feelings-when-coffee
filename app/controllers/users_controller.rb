# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @feelings = current_user.feelings
  end
end
