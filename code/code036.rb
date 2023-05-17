require 'httparty'

def search_wikipedia(keyword)
  url = "https://en.wikipedia.org/w/api.php?action=query&list=search&format=json&srsearch=#{URI.encode(keyword)}"
  response = HTTParty.get(url)  
  if response.code == 200
    data = response.parsed_response
    search_results = data['query']['search']
    if search_results.empty?
      puts "No results found for '#{keyword}' on Wikipedia."
    else
      puts "Search results for '#{keyword}' on Wikipedia:\n\n"
      search_results.each do |result|
        puts "#{result['title']}: #{result['snippet']}"
        puts "---------------------------"
      end
    end
  else
    puts "Error: #{response.code}"
  end
end

# Perform search until 'X' is entered
search_input = ""
while search_input != "X"
  puts "Enter a keyword to search on Wikipedia (or 'X' to exit):"
  search_input = gets.chomp
  
  if search_input != "X"
    search_wikipedia(search_input)
    puts "\n"
  end
end
