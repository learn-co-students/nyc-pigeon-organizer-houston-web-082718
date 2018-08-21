def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, specs| 
  	specs.each do |spec, birds|
  		birds.each do |bird|
  			pigeon_list[bird] ||= {}
         	pigeon_list[bird][attributes] ||= []
         	pigeon_list[bird][attributes] << spec.to_s
  		end
  	end
  end
  pigeon_list
end