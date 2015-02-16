class PullRequest < ActiveRecord::Base
  STATUSES = [
    OPEN = 'open',
    CLOSED = 'closed'
  ]

  before_save :update_sent_email

  class << self
    def update_from_github(pull_request_attrs)
      pull_request = PullRequest.find_or_initialize_by(pull_request_id: pull_request_attrs[:id])
      pull_request.assign_attributes(data: pull_request_attrs,
                                     status: pull_request_attrs[:state])
      pull_request.save
      pull_request
    end
  end

  private

  def update_sent_email
    self.sent_email = false if status == OPEN
    true
  end
end
