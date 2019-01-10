class PartsController < ApplicationController
  def index
  	@parts = Site.all
  end

  def create
  	@part = Part.new(part_params)
    @part.save
  	redirect_to @part
  end

  def show
  	@part = Part.find(params[:id])
  end

  def edit
  	@part = Part.find(params[:id])
  end

  private
  def part_params
    params.require(:part).permit(:reference_part, :reference_site, :part_type_designation)
  end
end
