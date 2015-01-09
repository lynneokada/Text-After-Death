class Receiver < User

  validates :phone_number,  :presence => true, :length => 10
  has_many :senders

end
