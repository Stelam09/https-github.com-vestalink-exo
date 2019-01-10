class SitesController < ApplicationController
  def index
  	@sites = Site.all
  end
  
  def create
		@site = site.new(site_params)
	  @site.save
		redirect_to @site
  end

  def show
  	@site = site.find(params[:id])
  end

  def edit
  	@site = site.find(params[:id])
  end

  private
  def site_params
    params.require(:site).permit(:reference_site, :nom, :address_line1, :zipcode, :city)
  end
end
