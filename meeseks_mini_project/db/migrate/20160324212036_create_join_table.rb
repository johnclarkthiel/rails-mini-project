class CreateJoinTable < ActiveRecord::Migration
  def change
  	  create_join_table :searches, :friends do |t|
      t.integer :user_id
    end
  end
end
