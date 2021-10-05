class ItemsController < ApplicationController
  before_action :search

  def search
    # params[:q]のqには検索フォームに入力した値が入る
    @q = Item.ransack(params[:q])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to item_path(@item.id)
  end

  def index
    @items = Item.all
    @items = @q.result(distinct: true)
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    if @item.user == current_user
      render "edit"
    else
      redirect_to items_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item.id)
      flash[:notice] = '編集に成功しました.'
    else
      @items = item.all
      render :edit
    end
  end

  def search
    # params[:q]のqには検索フォームに入力した値が入る
    @q = Item.ransack(params[:q])
  end

  private

  def item_params
    params.require(:item).permit(:title, :image, :explanation, :tag, :box)
  end
end
