class TestsController < ApplicationController

  def index
    #req_url = 'http://steamcommunity.com/market/priceoverview/?currency=3&appid=730&market_hash_name=StatTrak%E2%84%A2%20P250%20%7C%20Steel%20Disruption%20%28Factory%20New%29'
    #item = 'AK-47 | Vulcan'
    #condition = '(Minimal Wear)'
    #req_url = "http://steamcommunity.com/market/priceoverview/?currency=3&appid=730&market_hash_name=#{item} #{condition}"
    #req_url = 'http://steamcommunity.com/market'
    req_url = 'http://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v0001/?key=69058F1D9742DD4665510ADA5E8E45A1&steamid=76561197960434622&format=json'
    response = RestClient.get(req_url)
    json = JSON.parse(response)
    #json = json['players']
    json = json['response']['games']
    render json: json
    #id = 76561198017513304
    #x = PlayerBans.com_ban(id)
    #render text: x
  end
end
