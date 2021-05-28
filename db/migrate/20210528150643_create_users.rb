class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.timestamps

      t.index :email, unique: true # won't allow duplicate emails - enforcing at the database level
    end
  end
end
