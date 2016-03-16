class AccountsController < ApplicationController
  before_action :require_steam_id

  def index
  end

  def profile
    @profile = Account.get_player_summary(session[:steam_id])
    @profile['personastate'] = Account.get_persona_state(@profile['personastate'])
    @profile_friends = Account.get_friends_list(session[:steam_id])
  end

  private

  def require_steam_id
    unless entered_id?
      flash[:danger] = 'Please enter your steam id.'
      redirect_to home_url
    end
  end
end
