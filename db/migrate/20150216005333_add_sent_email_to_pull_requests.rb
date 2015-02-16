class AddSentEmailToPullRequests < ActiveRecord::Migration
  def change
    add_column :pull_requests, :sent_email, :boolean
  end
end
