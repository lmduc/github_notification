class PullRequestsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :event

  def event
    PullRequest.update_from_github(pull_request_params)
    render nothing: true
  end

  private

  def pull_request_params
    params[:pull_request]
  end
end
