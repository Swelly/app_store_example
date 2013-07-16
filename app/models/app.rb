class App < ActiveRecord::Base
	attr_accessible :name, :description, :price
  has_many :transactions
  has_many :users, :through => :transactions
end
