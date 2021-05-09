class Users::DashBoardsController < Users::Base
  
  def index
    vimeo = Api::Vimeo.new
    @videos = vimeo.video_list
  end

end
