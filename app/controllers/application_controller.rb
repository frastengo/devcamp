class ApplicationController < ActionController::Base
  ## run this before you run anything else in the controller
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

end
