# encoding: UTF-8
Rails.application.load_tasks

class SitesController < ApplicationController
  require 'rake'
  def new
  	@site = Site.new
  end
 
  def index
  	@sites = Site.all
  end
  
  def create
		@site = Site.new(site_params)
	  @site.save
		redirect_to @site
  end

  def show
  	@site = Site.find(params[:id])
  end

  def edit
  	@site = Site.find(params[:id])
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
    Rake::Task['import_sites_csv:site'].invoke
    flash[:success] = 'Data Imported'
    redirect_to action: 'index'
  end

  private
  def site_params
    params.require(:site).permit(:reference_site, :nom, :address_line1, :zipcode, :city)
  end
end
