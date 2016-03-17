class AccountsController < ApplicationController
  before_action :require_steam_id

  def index
  end

  def profile
    @profile = Account.new
    @profile.summary = Account.get_player_summary(session[:steam_id])
    if @profile.summary.nil?
      flash[:danger] = 'Bad request'
      session[:steam_id] = nil
      redirect_to home_url
    else
      @profile.personastate = Account.get_persona_state(@profile.summary['personastate'])
      @profile.friends = Account.get_friends_list(session[:steam_id])
      @profile.bans = Account.bans(session[:steam_id])
      @profile.recent = Account.recent(session[:steam_id])
      render :profile
    end
  end

  private

  def require_steam_id
    unless entered_id?
      flash[:danger] = 'Please enter your steam id.'
      redirect_to home_url
    end
  end
end
