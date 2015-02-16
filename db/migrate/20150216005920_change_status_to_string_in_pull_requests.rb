class ChangeStatusToStringInPullRequests < ActiveRecord::Migration
  def change
    change_column :pull_requests, :status, :string
  end
end
