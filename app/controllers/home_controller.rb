class HomeController < ApplicationController
  def index
    require 'news-api'

    newsapi = News.new ("569d61e918094eed8d5cb53bf98a0996")

    top_headlines = newsapi.get_top_headlines(country:'ie')
   
    @title1 = top_headlines[0].title
    @url1 = top_headlines[0].url
    @description1 = top_headlines[0].description
    @time1 = top_headlines[0].publishedAt
    @image1 = top_headlines[0].urlToImage

    @title2 = top_headlines[1].title
    @url2 = top_headlines[1].url
    @description2 = top_headlines[1].description
    @time2 = top_headlines[1].publishedAt
    @image2 = top_headlines[1].urlToImage

    @title3 = top_headlines[2].title
    @url3 = top_headlines[2].url
    @description3 = top_headlines[2].description
    @time3 = top_headlines[2].publishedAt
    @image3 = top_headlines[2].urlToImage
    
  end
  def about
  end

  def dashboard
    @users = User.where("email LIKE ?", "%#{params[:search]}%")
  end
end
