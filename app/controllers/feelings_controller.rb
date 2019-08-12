# frozen_string_literal: true

class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
    @feeling = Feeling.new(user: current_user)
  end

end
