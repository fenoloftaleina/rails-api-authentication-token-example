class AController < ApplicationController
  acts_as_token_authentication_handler_for User

  def asdf
    render :json => { :message => 'Well done!' }
  end
end
