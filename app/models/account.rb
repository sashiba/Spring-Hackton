class Account

  API_KEY = '69058F1D9742DD4665510ADA5E8E45A1'

  # 730 - cs
  # 570 -dota
  
  def self.get_player_summary(steam_id)
   url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{steam_id}"
   response = RestClient.get(url)
   JSON::parse(response)['response']['players'][0]
  end

  def self.get_persona_state(state)
    case state
    when 0 then 'Offline'
    when 1 then 'Online'
    when 2 then 'Busy'
    when 3 then 'Away'
    when 4 then 'Snooze'
    when 5 then 'looking to trade'
    when 6 then 'looking to play'
    end
  end

  def self.get_friends_list(steam_id)
    url = "http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key=69058F1D9742DD4665510ADA5E8E45A1&steamid=#{steam_id}&relationship=friend"
    response = RestClient.get(url)
    JSON::parse(response)['friendslist']['friends']
  end
end
