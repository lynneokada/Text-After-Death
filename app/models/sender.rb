class Sender < User

  validates :public_key,  :presence => true
  has_many :messages

end
