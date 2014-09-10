class UrlsController < ApplicationController
  def new
  	@url = Url.new
  end

  def show
  	@url = Url.find(params[:id])
  end

  def preview
  	@url = Url.where(:code => params[:code]).first
  end

  def redirectors
  	@url = Url.where(:code => params[:code]).first
  	if @url
  		redirect_to @url.link
  	else
  		redirect_to root_path :flash => {:error => "We can't find that url"} and return
  	end
  end

  def create
  	@url = Url.new url_params
  	@url.generate_code
  	if @url.save
  		redirect_to url_path(@url.id)
  	end
  end

  private

  def url_params
  	params.require(:url).permit(:link)
  end
end
