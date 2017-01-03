class ApprenticesController < ApplicationController
  def new
  	@apprentice = Apprentice.new
  end

  def create
  	@apprentice = Apprentice.new(apprentice_params)

    if @apprentice.save
      redirect_to root_url, :notice => "Signed up!"
    else 
      redirect_to new_apprentice_path, :notice => "there was an error signing up"
    end  
  end

  private 

  def apprentice_params
  	params.require(:apprentice).permit(:name, :email, :project_repo, :project_url, code_practice_attributes: [:OOP, :modular_development, :full_stack, :testing, :db_knowledge], aptitude_attributes: [:teamwork, :motivation, :communication, :energy, :intelligence, :problem_solving], language_rating_attributes: [:javascript, :html, :css])
  end 

end
