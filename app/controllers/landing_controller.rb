class LandingController < ApplicationController
  def index
    @surveys = Survey.all
  end
end
