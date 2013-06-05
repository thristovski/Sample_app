class PagesController < ApplicationController
  
  def home
    @title = "Micropost Feed"
    if signed_in?
      @current_microposts = 8
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page], :per_page => @current_microposts)
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
