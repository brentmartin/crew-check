class LandingController < ApplicationController
  before_action :require_login, only: [:new]

  def index
    @surveys = Survey.all
  end

  def new
  end
end
