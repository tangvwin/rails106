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

end
