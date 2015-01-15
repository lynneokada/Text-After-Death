require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should belong_to(:user)
  should validate_presence_of(:content)
  should validate_presence_of(:date)

end
