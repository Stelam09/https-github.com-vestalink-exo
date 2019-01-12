# encoding: UTF-8

class PartsController < ApplicationController
  def new
  	@part = Part.new
  end
 
  def index
  	@parts = Site.all
  end

  def create
  	@part = Part.new(part_params)
    @part.save
  	redirect_to @part
  end
  
  def import
    rails import_sites_csv:part
    redirect_to "/parts", notice "Data Imported !"
  end

  private
  def part_params
    params.require(:part).permit(:reference_part, :reference_site, :part_type_designation)
  end
end
