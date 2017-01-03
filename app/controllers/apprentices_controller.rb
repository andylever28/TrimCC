class ApprenticesController < ApplicationController
  
  def index
   redirect_to new_apprentice_path
  end  

  def new
  	@apprentice = Apprentice.new
  end

  def create
  	@apprentice = Apprentice.new(apprentice_params)

    respond_to do |format|
    if @apprentice.save
      DataMailer.data_mailer(@apprentice).deliver_now
       format.html { redirect_to root_url, :notice => "Signed up!" }
    else 
      format.html { render :new }
      format.json { render json: @apprentice.errors, status: :unprocessable_entity }
    end  
  end
  end

  private 

  def apprentice_params
  	params.require(:apprentice).permit(:name, :email, :project_repo, :project_url, code_practice_attributes: [:OOP, :modular_development, :full_stack, :testing, :db_knowledge, :debugging], aptitude_attributes: [:teamwork, :motivation, :communication, :energy, :intelligence, :problem_solving], language_rating_attributes: [:javascript, :html, :css])
  end 

end
