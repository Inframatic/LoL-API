require_relative 'html_generator'

if ARGV.empty?
  puts "Usage: ruby router.rb [action]"
else
  action = ARGV[0]
  generator=HtmlGenerator.new

  if action == "index"
    search_text = ARGV[1]
    generator.index(search_text)
  elsif action == "show"
    champion_name = ARGV[1]
    if champion_name.nil?
      puts "Usage: ruby router.rb show [champion_name]"
    else
      generator.show(champion_name)
    end
  else
    puts "Unknown action #{action}. Use index or show."
  end
end