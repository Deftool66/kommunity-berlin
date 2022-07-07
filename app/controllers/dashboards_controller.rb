class DashboardsController < ApplicationController

  def dashboard
    @requests = current_user.requests
    #@my_requests = current_user.requests_as_owner
  end

  def dashboard_institution
    @offers = current_user.offers
  end
end
