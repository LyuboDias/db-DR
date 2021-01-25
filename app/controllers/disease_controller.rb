class DiseaseController < ApplicationController

  def index
    @disease = Disease.all 
  end

  def show
    @disease = Disease.friendly.find(params[:id])
  end
 
  def new
    @disease = Disease.new
  end
  
  def create
    @disease = Disease.new(strong_params)
    if @disease.save!
      redirect_to disease_index, notice: "New Allergy content was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:disease).permit(:title, :subtitle, :content, :link, :image)
  end
end
