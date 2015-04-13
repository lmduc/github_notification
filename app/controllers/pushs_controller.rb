class PushsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :event

  def event
    Push.update_from_github(params)
    render nothing: true
  end
end
