require "json"

class Area
  def initialize
    # @main_id = id
    json_file = File.open(__dir__ + "/prefecture.json")
    @json_data = JSON.parse(json_file.read)
  end

  def group
    # if @main_id.to_i >= 10
    #   puts @main_id = "0" + @main_id.to_s
    # else
    #   puts @main_id = @main_id.to_s
    # end
    # area = @json_data[@main_id]["area"]["name"]
    # puts area

    @json_data.each do |data|
      if data[1]["area"]["id"] == 1
        puts data[1]["name"]
      end
    end
  end

  def kantou
  	@json_data.each do |data|
  		if data[1]["area"]["id"] == 2
  			puts data[1]["name"]
  		end
  	end
  end

  def hokuriku
    @json_data.each do |data|
      if data[1]["area"]["id"] == 3
        puts data[1]["name"]
      end
    end
  end

  def toukai
    @json_data.each do |data|
      if data[1]["area"]["id"] == 4
        puts data[1]["name"]
      end
    end
  end

  def kinkin
    @json_data.each do |data|
      if data[1]["area"]["id"] == 5
        puts data[1]["name"]
      end
    end
  end

  def tyuugoku
    @json_data.each do |data|
      if data[1]["area"]["id"] == 6
        puts data[1]["name"]
      end
    end
  end

  def shikoku
    @json_data.each do |data|
      if data[1]["area"]["id"] == 7
        puts data[1]["name"]
      end
    end
  end

  def kyuusyuu
    @json_data.each do |data|
      if data[1]["area"]["id"] == 8
        puts data[1]["name"]
      end
    end
  end
end

japan_data = Area.new
japan_data.group
japan_data.kantou
japan_data.hokuriku
japan_data.toukai
japan_data.kinkin
japan_data.tyuugoku
japan_data.shikoku
japan_data.kyuusyuu
