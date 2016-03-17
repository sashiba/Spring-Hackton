class SkinsController < ApplicationController
  

  private

  def skin_params
    params.require(:weapon).permit(:name, :picture, :weapon_id)
  end
end