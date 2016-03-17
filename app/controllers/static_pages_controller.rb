class StaticPagesController < ApplicationController

  def home
    @news_cs = StaticPage.get_news_for_app(730)
    @news_dota = StaticPage.get_news_for_app(570)
    @current_players_cs = StaticPage.current_players_count(730)
    @current_players_dota = StaticPage.current_players_count(570)
  end

  def create
    if StaticPage.validate(params[:steam_id])
      session[:steam_id] = params[:steam_id]
      redirect_to profile_accounts_url
    else
      redirect_to home_url
    end
  end

  def destroy
    session[:steam_id] = nil
    redirect_to home_url
  end
end
