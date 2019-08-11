# frozen_string_literal: true

class FeelingsController < ApplicationController
  def index
    @feelings = Feeling.all
  end
end
