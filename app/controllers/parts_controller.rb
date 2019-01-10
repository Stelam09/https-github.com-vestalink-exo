class PartsController < ApplicationController
  def index
  	@parts = Site.all
  end

  def import
  	Part.import(params[:file])
  	redirect_to root_url, notice: "Data imported !"
  end


  def create
  	Part.create reference_part: params[:reference_part]
  	Part.create part_type_designation: params[:part_type_designation]
  	redirect_to "/parts"
  end
end
