class AllergieController < ApplicationController

  def index
    @allergie = Allergie.all 
  end

  def show
    @allergie = Allergie.friendly.find(params[:id])
  end

  def new
    @allergie = Allergie.new
  end
   
  def create
    @allergie = Allergie.new(strong_params)
    if @allergie.save!
      redirect_to allergie_index, notice: "New allergy content was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:allergie).permit(:title, :subtitle, :content, :link, :image)
  end
end
