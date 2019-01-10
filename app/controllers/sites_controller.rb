class SitesController < ApplicationController
  def index
  	@sites = Site.all
  end

  def import
  	Site.import(params[:file])
  	redirect_to root_url, notice: "Data imported !"
  end
end
