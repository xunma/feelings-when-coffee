# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    if current_user
      redirect_to feelings_path
    end
  end
end
