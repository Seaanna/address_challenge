class CreateUsers < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
