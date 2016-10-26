require "json"

class Area
  def initialize
    json_file = File.open(__dir__ + "/prefecture.json")
    @json_data = JSON.parse(json_file.read)
  end

  def kantou
    @json_data.each do |data|
      if data[1]["area"]["id"] == 2
        puts data[1]["name"]
      end
    end
  end
end

kantou_data = Area.new
kantou_data.kantou
