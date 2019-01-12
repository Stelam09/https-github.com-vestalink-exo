# encoding: UTF-8

class SitesController < ApplicationController
  
  def new
  	@site = Site.new
  end
 
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
  
  def update
	  @site = Site.find(params[:id])
	 
	  if @site.update(site_params)
	    redirect_to @site
	  else
	    render 'edit'
	  end
  end
  
  def import
    rails import_sites_csv:site
    redirect_to "/sites", notice "Data Imported !"
  end

  private
  def site_params
    params.require(:site).permit(:reference_site, :nom, :address_line1, :zipcode, :city)
  end
end
