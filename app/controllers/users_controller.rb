class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @boxs = @user.boxs.page(params[:page]).reverse_order
  end
  def edit
    @user = User.find(params[:id])
  end
end
