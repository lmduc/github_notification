class AddDataToPullRequests < ActiveRecord::Migration
  def change
    add_column :pull_requests, :data, :hstore
  end
end
