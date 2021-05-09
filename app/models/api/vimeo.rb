class Api::Vimeo
  TOKEN = ENV["VIMEO_TOKEN"].freeze

  attr_accessor :vimeo_client

  def initialize()
    @vimeo_client = VimeoMe2::VimeoObject.new(TOKEN)
  end

  def video_list
    result = vimeo_client.get('/me/projects/4066451/videos')["data"]
    result
  end

end