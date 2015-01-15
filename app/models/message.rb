class Message < ActiveRecord::Base
  #relationships
  belongs_to :user
  have_many :receiver_id

  #validations
  validates :content, :presence => true
  validates :date, :presence => true
end
