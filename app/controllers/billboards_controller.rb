class BillboardsController < ApplicationController
before_action :set_bd, only: [:show, :edit, :update, :destroy]
  def index
    @bd = Billboard.all
  end

  def show

  end

  def new
    @bd = Billboard.new
    render partial: 'form'
  end
  def create
    @bd = Billboard.new(bd_params)

    if @bd.save
      redirect_to @bd
    else
      render :new
    end
  end
  def edit
    render partial: 'form'
  end

  def update
    if @bd.update(bd_params)
      redirect_to billboards_path
    else
      render :edit
    end
  end


  def destroy

    @bd.destroy
    redirect_to billboards_path

  end



  private

  def set_bd
    @bd = Billboard.find(params[:id])
  end
  def bd_params
    params.require(:billboard).permit(:name)

  end
end
