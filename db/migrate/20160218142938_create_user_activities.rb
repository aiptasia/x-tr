class CreateUserActivities < ActiveRecord::Migration
  def change
    create_table :user_activities do |t|
      t.string :session_id
      t.string :source
      t.string :action
      t.string :user_info

      t.timestamps null: false
    end
  end
end
