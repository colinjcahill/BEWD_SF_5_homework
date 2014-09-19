
class LinksController < ApplicationController
	def index
		@link = Link.new
  	end

  	def show

  	end

  	def new
  	end

  	def redirectors
  		@long_url = Link.find_by hash_code:(params[:hash_code])	
  		if @long_url
  			redirect_to @long_url.link
  		else
  			'links#index'
  		end

  	def preview
  		@long_url = Link.find_by hash_code:(params[:hash_code])
  	end


  	end

  	def create
  		@link = Link.new(link_params)
  		@link.hash_code = Random.rand(100000..999999)
  		if @link.save
  			redirect_to @link, notice: "Link was shortened!"
  		else 
  			render 'index'
  		end
  	end

  	def link_params
  		params.require('link').permit(:link, :hash_code)
  	end
end
