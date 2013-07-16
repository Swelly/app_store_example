class CreateTransactions < ActiveRecord::Migration
  def up
  	create_table :transactions do |t|
  		t.belongs_to :user
  		t.belongs_to :app
  		t.timestamps
  	end
  end

  def down
  	drop_table :transactions
  end
end
