# encoding: UTF-8

Rails.application.load_tasks

class PartsController < ApplicationController
  def new
    @part = Part.new(reference_site_id: params[:reference_site_id])
  end
 
  def index
  	@parts = Part.all
  end

  def create
  	@part = Part.new(part_params)
    @part.save
  	redirect_to action: 'index'
  end
  
  def import
    Rake::Task['import_sites_csv:part'].invoke
    flash[:success] = 'Data Imported'
    redirect_to action: 'index'
  end

  private
  def part_params
    params.require(:part).permit(:reference_part, :reference_site_id, :part_type_designation)
  end
end
