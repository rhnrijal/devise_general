class WelcomeController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  end

  def search
    talent = Talent.arel_table
    @students = Student.joins(:talents).select('students.name, talents.name as talent_name')
    @students = @students.where(talent[:name].matches("%" + params[:search] + "%"))
  end
end