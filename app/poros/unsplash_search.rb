class UnsplashSearch

  def initialize(params)
    @params = params
  end

  def formatted_data
    data = UnsplashService.new.picture(@params)
    {
      image_url: data[:results].first[:urls][:regular]
    }
  end

end
