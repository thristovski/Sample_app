class PagesController < ApplicationController
  
  def home
    @title = "Micropost Feed"
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About Us"
  end

  def help
    @title = "Help"
  end

end
