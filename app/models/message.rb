class Message < ActiveRecord::Base
  #relationships
  belongs_to :sender 
  has_many :receivers

  #validations
  validates :content, :presence => true
end
