def nyc_pigeon_organizer(data)
  pigeon_list = {}

	data.each do |key, value|
		value.each do |key2, array|
			array.each do |name|

				pigeon_list[name] = {}
# 				pigeon_list[name][key] = []
# 				puts name

# 				if pigeon_list[name][key]
# 					pigeon_list[name][key] << []
# # 					puts "sad"
# 				else
# 					pigeon_list[name][key] = []
# # 					puts "happy"
# 				end
# 				pigeon_list[name][key] = [key2.to_s]
			end
		end
# 		puts key
	end

	pigeon_list.each do |keyp, valuep|
		data.each do |keyp2, valuep2|
			pigeon_list[keyp][keyp2] = []

			valuep2.each do |keyp3, valuep3|
				valuep3.each do |ele|
					if ele == keyp
						pigeon_list[keyp][keyp2] << keyp3.to_s
# 						puts "happy"
					end
# 					puts keyp
				end
			end
		end
	end

	return pigeon_list
end
