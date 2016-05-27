class LandingController < ApplicationController
  before_action :require_login, only: [:new]

  def index
    @surveys = Survey.where(user_id: current_user)
  end

  def new
  end
end
