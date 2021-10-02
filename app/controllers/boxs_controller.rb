class BoxsController < ApplicationController
  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)
    @box.user_id = current_user.id
    @box.save
    redirect_to boxs_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def box_params
    params.require(:box).permit(:title, :image, :explanation)
  end
end
