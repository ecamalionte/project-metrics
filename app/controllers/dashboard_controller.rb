class DashboardController < ApplicationController
  def index
    @problems = Problem.limit(5)
    @projects = Project.limit(5)
  end
end
