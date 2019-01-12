# encoding: UTF-8

class PagesController < ApplicationController
	def import
  	rails import_sites_csv:site
  	rails import_sites_csv:part
  	redirect_to root_url, notice "Data Imported !"
	end
end
