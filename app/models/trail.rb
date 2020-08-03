class Trail
  attr_reader :id, :location, :forecast, :trails
  def initialize(data)
    @id = nil
    @location = data[:location]
    @forecast = data[:forecast]
    @trails = data[:trails]
  end
end
