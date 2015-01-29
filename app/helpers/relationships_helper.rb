module RelationshipsHelper

  def create_relationships(message_receiver_ids, message_id)
    message_receiver_ids.each do |receiver_id|
      @relationship = Relationship.new

      @relationship.user_id = current_user.id
      @relationship.receiver_id = receiver_id
      @relationship.message_id = message_id

      @relationship.save

    end

  end

end
