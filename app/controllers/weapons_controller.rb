class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :picture)
  end
end