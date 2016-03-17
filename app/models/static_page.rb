class StaticPage

  def self.validate(steam_id)
    if steam_id.blank?
      false
    else
      true
    end
  end

  def self.get_news_for_app(app_id)
    url = "http://api.steampowered.com/ISteamNews/GetNewsForApp/v0002/?appid=#{app_id}&count=3&maxlength=300&format=json"
    response = JSON::parse(RestClient.get(url))['appnews']['newsitems']
  end

  def self.current_players_count(app_id)
    url = "http://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=#{app_id}&format=json"
    response = JSON::parse(RestClient.get(url))['response']['player_count']
  end
end
