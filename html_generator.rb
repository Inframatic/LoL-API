require 'json'
require 'open-uri'
require 'pry'

class HtmlGenerator
  
  # attr_accessor :champion

  # def initialize
  #   @champion = champion
  # end

  def index(search_text)
    
    champions = retrieve_data
    # Retrieve the list of champions
    # Champions=retrieve_data("/Users/bitmaker02/Desktop/lolapi/champion_list.txt")

    print_header

    puts "<h1>All Champions</h1>"

    # Loop over the Champions, printing each one
    

    champions.each do |champion|
      # champions.each do |champion|
      # champion = "champion_list.text"[champion]        # retrieve_data(champion)
      puts "<div class='champion'>"
      puts "  <h2>#{champion['name']}</h2>"
      # puts "  <img src='#{champion['image_thumb_url']}'  class='champion-thumbnail'/>"
      # puts "  <ul class='champion-data'>"
      puts "    <li>id: #{champion['id']}</li>"
      puts "    <li>#{champion['title']}</li>"
      puts "    <li>#{champion['tags']}</li>"
      puts "    <li>#{champion['quote']}</li>"
      puts "    <li>#{champion['armorBase']} ml</li>"
      # puts "    <li>$#{format_price(champion['price_in_cents'])}</li>"
      puts "  </ul>"
      puts "</div>"
      # end
    puts "<footer>"
    # puts "  For more info see the <a href='http://lcboapi.com/docs/champions'>champions API docs</a>."
    puts "</footer>"

    print_footer
    end
  end

  def show(champion_name)
    # Retrieve the specified champion
    
    # champion=retrieve_data("/Users/bitmaker02/Desktop/lolapi/champion_list.txt")
    File.open("champion_list.txt", "r") do |champions|
      champions =
      # champions.each do |champion|
          champion_name = "#{champion['name']}"
          print_header
          puts "<div class='champion'>"
          puts "  <h2>#{champion['name']}</h2>"
          # puts "  <img src='#{champion['image_url']}'  class='champion-image'/>"
          # puts "  <ul class='champion-data'>"
          puts "    <li>id: #{champion['id']}</li>"
          puts "    <li>#{champion['title']}</li>"
          puts "    <li>#{champion['tags']}</li>"
          puts "    <li>#{champion['quote']}</li>"
          puts "    <li>#{champion['origin']}</li>"
          puts "    <li>#{champion['armorBase']} ml</li>"
          puts "    <li>#{champion['manaBase']}</li>"
          # puts "    <li>$#{format_price(champion['price_in_cents'])}</li>"
          puts "    <li>#{champion['range']}</li>"
          puts "    <li>#{champion['description']}</li>"
          puts "    <li>Tags: #{champion['moveSpeed']}</li>"
          puts "  </ul>"
          puts "</div>"
          print_footer

      # end
    end
  end

  def print_header
    puts "<html>"
    puts "  <head>"
    puts "    <title>League of Legends Database</title>"
    puts "    <link rel='stylesheet' href='normalize.css' type='text/css'>"
    puts "    <link rel='stylesheet' href='styles.css' type='text/css'>"
    puts "  </head>"
    puts "  <body>"
  end

  def print_footer
    puts "  </body>"
    puts "</html>"
  end

  def retrieve_data
    read_file = File.open("champion_list.txt", "r") do |f|
      JSON.load(f)
    end
    binding.pry

    # parsed_file = JSON.parse(eval(read_file))
    champion = parsed_file[champion]


    # # Retrieve JSON-formatted text from lcboapi.com
    # raw_response = open(file_location).read

    # # Parse JSON-formatted text into a Ruby Hash
    # parsed_response = JSON.parse(raw_response)

    # # Return just the actual result data from the response, ignoring metadata
    # result = parsed_response["result"]
  end

  # Convert a string of a price in cents to a float.
  # e.g. "199" to 1.99
  # def format_price(cents_string)
  #   cents_string.to_f/100
  # end

end