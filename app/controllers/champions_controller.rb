class ChampionsController < ApplicationController
  def index
    @champions=Champion.all
  end

  def new
    @champion=Champion.new
  end

  def create
    @champion=Champion.new(champion_params)
    if @champion.save
      redirect_to champions_path, notice: "New Champion Arrives"
    else
      render :new, notice: "Sommon Champion Failed"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def champion_params
    params.require(:champion).permit(:name, :protrait, :ip)
  end
end
