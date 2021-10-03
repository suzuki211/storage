class BoxsController < ApplicationController
  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    @box.user_id = current_user.id
    @box.save
    redirect_to box_path(@box.id)
  end

  def index
  end

  def show
    @box = Box.find(params[:id])
  end

  def destroy
    @box = Box.find(params[:id])
    @box.destroy
    redirect_to boxs_path
  end

  private

  def box_params
    params.require(:box).permit(:title, :image, :explanation)
  end
end
