class CreatePullRequests < ActiveRecord::Migration
  def change
    create_table :pull_requests do |t|
      t.integer :pull_request_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
