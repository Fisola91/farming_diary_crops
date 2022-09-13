require_relative "corn"

puts "\n\n Day One: Corn"
corn = Corn.new
corn.water!
puts "The corn crop produced #{corn.grains} grains"
corn_status = corn.ripe? ? "ripe" : "not ripe"
puts "The corn is #{corn_status}"
