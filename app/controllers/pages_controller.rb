# encoding: UTF-8

class PagesController < ApplicationController
	def import
		
		rails import:site
  rails import:part
  redirect_to root_url, notice "Data Imported !"
	end
end
