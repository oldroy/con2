class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def plans
    @plans = Plan.all
  end
end
