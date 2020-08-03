class Background
  attr_reader :id, :image_url
  def initialize(data)
    @id = nil
    @image_url = data[:image_url]
  end

end
