class UnsplashSearch

  def initialize(params)
    @params = params
  end

  def formatted_data
    data = UnsplashService.new.locations(@params)
    binding.pry
    {

    }
  end

end
