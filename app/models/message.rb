class Message < ActiveRecord::Base
  #relationships
  belongs_to :user

  #validations
  validates :content, :presence => true
  validates :date, :presence => true
end
