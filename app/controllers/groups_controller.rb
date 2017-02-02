class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group.find(params[:id])
  end

  def edit
    @group.find(params[:id])
  end

  def create

    @group = Group.new(group_params)
  @group.save
  redirect_to groups_path
end
private
def group_params
  params.require(:group).permit(:title, :description)
end

end
