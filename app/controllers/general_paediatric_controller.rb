class GeneralPaediatricController < ApplicationController

  def index
    @general_paediatric = GeneralPaediatric.all 
  end

  def show
    @general_paediatric = GeneralPaediatric.find(params[:id])
  end

  def new
    @general_paediatric = GeneralPaediatric.new
  end
  
  def create
    @general_paediatric = GeneralPaediatric.new(strong_params)
    if @general_paediatric.save!
      redirect_to general_paediatric_index, notice: "New General Paediatrics content was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:general_paediatric).permit(:title, :subtitle, :content, :link)
  end
end
