class AwardsController < ApplicationController
  before_action :set_award, only: [:show, :edit, :update, :destroy]
  before_action :set_talent, only: [:create]
  # GET /awards
  # GET /awards.json


  def set_talent
    @talent = Talent.find(params[:talent_id])
  end

  def index
    @awards = Award.all
    if params[:sort_by] == "description"
      @awards = @awards.order(:description)
    else
      @awards = @awards.order(:category)
    end
  end

  # GET /awards/1
  # GET /awards/1.json
  def show

  end

  # GET /awards/new
  def new
    @award = Award.new
  end

  # GET /awards/1/edit
  def edit
  end

  # POST /awards
  # POST /awards.json
  def create
    @award = @talent.awards.create award_params

    respond_to do |format|
      if @award.save
        format.html { redirect_to @talent, notice: 'Award was successfully created.' }
        format.json { render :show, status: :created, location: @talent }
      else
        format.html { render :new }
        format.json { render json: @award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awards/1
  # PATCH/PUT /awards/1.json
  def update
    respond_to do |format|
      if @award.update(award_params)
        format.html { redirect_to @award, notice: 'Award was successfully updated.' }
        format.json { render :show, status: :ok, location: @award }
      else
        format.html { render :edit }
        format.json { render json: @award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards/1
  # DELETE /awards/1.json
  def destroy
    @award.destroy
    respond_to do |format|
      format.html { redirect_to awards_url, notice: 'Award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award
      @award = Award.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def award_params
      params.require(:award).permit(:description, :category, :image, :video)
    end
end
