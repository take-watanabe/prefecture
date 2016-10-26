class Area
  def initialize
    require "json"

    json_file = File.open(__dir__ + "/prefecture.json")
    @json_data = JSON.parse(json_file.read)
  end

  def kantou
    @count = 1
    @json_data.each do |data|
      if @count >= 10
        @count = "0" + @count.to_s
      else
        @count.to_s
      end

      if data[@count]["area"]["id"] == 2
        puts data[@count]["name"]
      end
      @count.to_i + 1
    end
  end
end

kantou_data = Area.new
kantou_data.kantou
