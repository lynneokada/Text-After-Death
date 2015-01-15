class Message < ActiveRecord::Base
  #relationships
  belongs_to :user
  has_many :receivers

  #validations
  validates :content, :presence => true
end
