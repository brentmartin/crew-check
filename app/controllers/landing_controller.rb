class LandingController < ApplicationController
  before_action :require_login, only: [:new]

  def index
    @surveys = current_user.surveys
  end

  def new
  end
end
