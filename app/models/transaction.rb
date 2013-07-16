class Transaction < ActiveRecord::Base
  attr_accessible :user
  belongs_to :user
  belongs_to :app
end
