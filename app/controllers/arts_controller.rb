class ArtsController < ApplicationController
  before_action :set_art, only: [:show, :edit, :update, :destroy]
  def index
    @art = Art.all
  end

  def show
  end
  def new
    @art = Art.new
    render partial: 'form'
  end
  def create
    @art = Art.new(art_params)

    if @art.save
      redirect_to @art
    else
      render :new
    end
  end
  def edit
    render partial: 'form'
  end
  def update
    if @art.update(art_params)
      redirect_to arts_path
    else
      render :edit

    end
  end
  def destroy
    @art.destroy
    redirect_to arts_path
  end

  private
  def set_art
   @art = Art.find(params[:id])
  end
  def art_params
    params.require(:art).permit(:name)
  end
end
