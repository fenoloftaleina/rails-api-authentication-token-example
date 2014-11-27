class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  extend SimpleTokenAuthentication::ActsAsTokenAuthenticationHandler

  respond_to :json
end
