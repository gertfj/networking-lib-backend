class ApiController < ApplicationController
  respond_to :json
  protect_from_forgery with: :null_session
  
  # Include any custom rescue_from statements below the include
  # as rescue_from is evaluated bottom-to-top
  include ShpApi::RescueFrom
end
