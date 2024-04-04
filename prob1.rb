require "httparty"
response = HTTParty.get('https://api.github.com/users/RoboMal/repos')
if response.code == 200

    data = JSON.parse(response.body)

    def starred_repo(data)
    star_count = data.max{ |x| x['stargazers_count']}

    {name: star_count["name"],
  description: star_count["description"],
  star_count: star_count["stargazers_count"],
  repo_url: star_count["html_url"]
  }
  end

    def display(data)
    puts "Name: #{data[:name]}"
    puts "Description: #{data[:description]}"
    puts "Count Stars: #{data[:star_count]}"
    puts "URL: #{data[:repo_url]}"

  end
end
new_data = starred_repo(data)
new_display = (display(new_data))
