require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  should belong_to(:user)
  should have_many(:receivers)


end
