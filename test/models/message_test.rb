require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  should belong_to(:user)
  should have_one(:user_id)
  should have_many(:receiver_id)
  should have_one(:message_id)
end
