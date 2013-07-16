class User < ActiveRecord::Base
  attr_accessible :name
  has_many :transactions
  has_many :apps, :through => :transactions
end
