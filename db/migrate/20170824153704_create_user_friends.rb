class CreateUserFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :user_friends do |t|

      t.timestamps
    end
  end
end
