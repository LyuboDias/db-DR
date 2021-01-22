class LessonController < ApplicationController

  def index
    @lesson = Lesson.all 
  end

  def show
    @lesson = Lesson.friendly.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end
  
  def create
    @lesson = Lesson.new(strong_params)
    if @lesson.save!
      redirect_to lesson_index, notice: "New lesson was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:lesson).permit(:title, :subtitle, :briefdescription, :content, :link, :image)
  end
end
