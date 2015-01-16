class Receiver < ActiveRecord::Base
  #Validations
  has_many :relationships

  has_many :messages, through: :relationships
  belongs_to :user, through: :relationships

end
