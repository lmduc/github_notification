class PullRequestsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :event

  def event
    PullRequest.update_from_github(params[:pull_request])
    render nothing: true
  end
end
