class AllergyController < ApplicationController

  def index
    @allergy = Allergy.all 
  end

  def show
    @allergy = Allergy.friendly.find(params[:id])
  end

  def new
    @allergy = Allergy.new
  end
   
  def create
    @allergy = Allergy.new(strong_params)
    if @allergy.save!
      redirect_to allergy_index, notice: "New allergy content was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:allergy).permit(:title, :subtitle, :content, :link, :image)
  end
end
