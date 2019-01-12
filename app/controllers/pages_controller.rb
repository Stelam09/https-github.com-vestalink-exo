# encoding: UTF-8

class PagesController < ApplicationController
	def import
		
		rails import:site
  rails import:part
 
	end
end
