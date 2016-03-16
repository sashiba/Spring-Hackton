class PlayerBans
  def self.com_ban(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['CommunityBanned']
  end

  def self.vac_ban(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['VACBanned']
  end

  def self.num_vac_bans(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['NumberOfVACBans']
  end

  def self.days_last_ban(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['DaysSinceLastBan']
  end

  def self.num_game_bans(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['NumberOfGameBans']
  end

  def self.econ_ban(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    json = json['players'][0]['EconomyBan']
  end
end
