class TestsController < ApplicationController

  def index
    #req_url = 'http://steamcommunity.com/market/priceoverview/?currency=3&appid=730&market_hash_name=StatTrak%E2%84%A2%20P250%20%7C%20Steel%20Disruption%20%28Factory%20New%29'
    item = 'AK-47 | Vulcan'
    condition = '(Minimal Wear)'
    req_url = "http://steamcommunity.com/market/priceoverview/?currency=3&appid=730&market_hash_name=#{item} #{condition}"
    #req_url = 'http://steamcommunity.com/market'
    response = RestClient.get(req_url)
    render json: response
  end
end
