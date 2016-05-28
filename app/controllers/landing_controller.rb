class LandingController < ApplicationController
  before_action :require_login, only: [:index]

  def index
    @surveys = current_user.surveys
  end
end
