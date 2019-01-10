class PartsController < ApplicationController
  def index
  	@parts = Site.all
  end

  def import
  	Part.import(params[:file])
  	redirect_to root_url, notice: "Data imported !"
  end
end
