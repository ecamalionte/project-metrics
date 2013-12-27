class DashboardController < ApplicationController
  before_action :authorize, except: [:index, :show]

  def index
    @problems = Problem.limit(5)
    @projects = Project.limit(5)
  end
end
