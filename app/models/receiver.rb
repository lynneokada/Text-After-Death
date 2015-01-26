class Receiver < ActiveRecord::Base
  # relationships
  has_many :relationships
  has_many :messages, through: :relationships
  has_many :users, through: :relationships

end
