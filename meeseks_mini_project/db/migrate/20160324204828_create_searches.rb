class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|

    	t.string :bar_name
    	t.decimal :rating
    	t.string :review

      t.timestamps null: false
    end
  end
end
