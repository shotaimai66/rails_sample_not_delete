module ApplicationHelper
  def page_body_id(params)
    params[:controller].gsub(/\//, '-')+"-"+params[:action]
  end
end
