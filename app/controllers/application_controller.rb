class ApplicationController < ActionController::Base
  ## run this before you run anything else in the controller
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end



end
