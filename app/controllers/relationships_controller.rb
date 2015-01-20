class RelationshipsController < ApplicationController

  def new
    @relationship = Relationship.new
  end

  def create
    @user = User.find(params[:id])
  end

  private

  def relationship_params
    params.require(:relationship).permit(:user_id, :message_id, :receiver_id)
  end

end
