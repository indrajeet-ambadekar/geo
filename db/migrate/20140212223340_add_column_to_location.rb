class AddColumnToLocation < ActiveRecord::Migration
  def change
  	change_table :locations do |t|
  		t.belongs_to :user
  	end
  end
end
