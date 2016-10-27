require "json"

class Area
  def initialize(id)
    @id = id
    json_file = File.open(__dir__ + "/prefecture.json")
    @json_data = JSON.parse(json_file.read)
  end

  def area
    @json_data.each do |data|
      if data[1]["area"]["id"] == @id.to_i
        @area_name = data[1]["area"]["name"]
      end
    end
    puts "エリア：" + @area_name
  end

  def place
    @json_data.each do |data|
      if data[1]["area"]["id"] == @id.to_i
        puts data[1]["name"]
      end
    end
  end

  attr_accessor :id

  # def kantou
  # 	@json_data.each do |data|
  # 		if data[1]["area"]["id"] == 2
  # 			puts data[1]["name"]
  # 		end
  # 	end
  # end
  #
end

japan_data = Area.new(4)
japan_data.area
japan_data.place
japan_data.id = 2
japan_data.area
japan_data.place
japan_data.id = 3
japan_data.area
japan_data.place
