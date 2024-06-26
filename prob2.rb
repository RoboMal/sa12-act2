require "httparty"
response = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')

if response.code == 200
  data = JSON.parse(response.body)
    def cryptocurrencies_marketcap(data)
    data.each_with_index do |x, index|
      if index <= 5
        puts "Name: #{x['name']}"
        puts "Current Price: #{x['current_price']}"
        puts "Market Cap: #{x['market_cap']} \n\n"
      end
    end
  end
end
cryptocurrencies_marketcap(data)
