class NavigateController < ApplicationController
  
  def goto
    link = Link.find(params[:link_id])
    # uri = URI(link.url)
    redirect_to link.url
  end
end