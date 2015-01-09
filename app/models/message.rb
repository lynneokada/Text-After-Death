class Message < ActiveRecord::Base
  #relationships

  #validations
  validates :content, presence: true
end
