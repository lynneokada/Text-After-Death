require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase

  def setup
    @relationship = Relationship.new(user_id: 1, receiver_id: 1, message_id: 1)
  end

  test "should be valid" do
    assert relationship.valid?
  end

  test "should require user_id" do
    @relationship.user_id = nil
    assert_not @relationship.valid?
  end

  test "should require receiver_id" do
    @relationship.user_id = nil
    assert_not @relationship.valid?
  end

  test "should require message_id" do
    @relationship.message_id = nil
    assert_not @relationship.valid?
  end


end
