class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value 
      t.references :voteable, polymorphic: true, index: true
      t.references :user, index: true
    end
  end
end
