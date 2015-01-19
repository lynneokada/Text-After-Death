class Message < ActiveRecord::Base
  #relationships
  has_many :receivers, through: :relationships, dependent: :destroy
  belongs_to :user, dependent: :destroy

  #validations
  validates :content, :presence => true
  validates :date, :presence => true

end
