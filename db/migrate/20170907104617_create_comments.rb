class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :statement, null: false
      t.references :commentable, polymorphic: true, index: true
      t.references :user, index: true
      
      t.timestamps
    end
  end
end
