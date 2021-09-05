class Users::DashBoardsController < Users::Base

  def index
    @videos = [
      '<iframe width="560" height="315" src="https://www.youtube.com/embed/AMewII-MfmU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'
    ]
  end

end
