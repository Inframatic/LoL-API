require 'active_support/core_ext'
require 'json'

File.open("champion_list.txt", "w") do |file_name|
	 File.open("champions.txt", "r").each do |folder_name|
		folder_name = folder_name.strip
		xml = File.open("LoLStudio2/data/#{folder_name}/champion.xml").read
		json = Hash.from_xml(xml).to_json
		file_name.write(json)
	end
end


# File.open("champions.txt", "r").each do |champion_name|
# 	File.open('/Applications/LoLStudio2/data/#{champion_name}/champion.xml', 'r') do |champion| 
# 		xml_data = champion 
# 		s = URI.parse(champion)
# 		champion_json = Hash.from_xml(s).to_json
# 		champion_hash = JSON.parse(champion_json)
		
# 	end
# end

# find the directory containing all of the champion directories

# unix command to save all of the folder names to an array

# find all champion.xml and read