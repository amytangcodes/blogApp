class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :blog_post, null: false, foreign_key: true
      t.string :user, null: false # cannot be empty
      t.text :body, null: false
      t.timestamps
    end
  end
end
