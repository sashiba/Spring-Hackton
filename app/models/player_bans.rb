class PlayerBans
  def self.com_ban(id)
    req_url ="http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=69058F1D9742DD4665510ADA5E8E45A1&steamids=#{id}"
    response = RestClient.get(req_url)
    json = JSON.parse(response)['players'][0]
  end
end