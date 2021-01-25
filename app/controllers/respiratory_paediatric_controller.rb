   class RespiratoryPaediatricController < ApplicationController

  def index 
    @respiratory_paediatric = RespiratoryPaediatric.all 
  end

  def show
    @respiratory_paediatric = RespiratoryPaediatric.friendly.find(params[:id])
  end

  def new
    @respiratory_paediatric = RespiratoryPaediatric.new
  end
  
  def create
    @respiratory_paediatric = RespiratoryPaediatric.new(strong_params)
    if @respiratory_paediatric.save!
      redirect_to respiratory_paediatric_index, notice: "New Respiratory Paediatric was saved"
    else
      render :new 
    end
  end
  
  private

  def strong_params
    params.require(:respiratory_paediatric).permit(:title, :subtitle, :briefdescription, :content, :link, :image)
  end
end
