class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end

  def search
      talent = Talent.arel_table
      award = Award.arel_table
      @students = Student.joins(:talents).select('students.id, students.name, talents.name as talent_name')
      @students = @students.where(talent[:name].matches("%" + params[:search] + "%"))

      @talents = Talent.joins(:awards).select('talents.name, awards.description as award_description')
      @talents = @talents.where(award[:description].matches("%" + params[:search] + "%"))
  end
end