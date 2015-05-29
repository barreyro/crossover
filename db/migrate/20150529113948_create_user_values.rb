class CreateUserValues < ActiveRecord::Migration
  def change
    create_table :user_values do |t|

      t.timestamps
    end
  end
end
