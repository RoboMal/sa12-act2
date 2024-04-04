require "httparty"

response = HTTParty.get('http://worldtimeapi.org/api/timezone/Europe/London')

if response.code == 200

  data = JSON.parse(response.body)

    def timezone(data)
      x = data['datetime']
      date = x.match(/(\d{4}-[0-1][0-9]-[0-3][0-9])/)
      time = x.match(/\d{2}:\d{2}:\d{2}/)
      puts "The current time in #{data['timezone']} is #{date} #{time}"
    end
end

timezone(data)
