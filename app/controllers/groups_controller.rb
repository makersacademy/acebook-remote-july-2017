class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    @user_groups = UserGroup.find(params[:id])
  end

  def new
  end

  def create
    user = User.find(current_user.id)
    p user
    @group = Group.create(group_params)
    @group.save

    @user_groups = UserGroup.create(group_id: @group.id, user_id: user.id)
    @user_groups.save
    redirect_to @group
  end

  private

  def group_params
    params.require(:group).permit(:title, :description)
  end
end
