require 'active_support/core_ext'
require 'json'

File.open("champion_list.txt", "w") do |file_name|
	 File.open("championsnonum.txt", "r").each do ||
		 file_name = file_name.strip
		File.open("LoLStudio2/data/Ahri_103/champion.xml").read
		json = Hash.from_xml(xml).to_json
		file_name.write(json)
	# end
end