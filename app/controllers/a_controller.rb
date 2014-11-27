class AController < ApplicationController
  def asdf
    render :json => { :message => 'Well done!' }
  end
end
