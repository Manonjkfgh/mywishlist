class WishesController < ApplicationController
  def index
    @wishes = Wish.all
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def new
  @wish = Wish.new
  end

  def create
  @wish = Wish.new(wish_params)
  @wish.save
  redirect_to wishes_path
  end

  def edit
  @wish = Wish.find(params[:id])
  end

  def update
  @wish = Wish.find(params[:id])
  @wish.update(wish_params)
  redirect_to wishes_path
  end

  def destroy
  @wish = Wish.find(params[:id])
  @wish.destroy
  redirect_to wishes_path
  end


private
def wish_params
params.require(:wish).permit(:title, :price, :lien, :content)
end

end
