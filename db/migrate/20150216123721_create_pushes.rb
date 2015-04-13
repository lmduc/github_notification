class CreatePushes < ActiveRecord::Migration
  def change
    create_table :pushes do |t|
      t.hstore :data

      t.timestamps null: false
    end
  end
end
