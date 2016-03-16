class AccountsController < ApplicationController
  def index
    @news_cs = Account.get_news_for_app(730)
    @news_dota = Account.get_news_for_app(570)
  end

  def profile
    @profile = Account.get_player_summary('76561197960435530')
    @profile['personastate'] = Account.get_persona_state(@profile['personastate'])
  end
end
