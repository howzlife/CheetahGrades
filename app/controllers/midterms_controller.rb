class MidtermsController < ApplicationController
  before_action :set_midterm, only: [:show, :edit, :update, :destroy]

  # GET /midterms
  # GET /midterms.json
  def index
    @midterms = Midterm.all
  end

  # GET /midterms/1
  # GET /midterms/1.json
  def show
  end

  # GET /midterms/new
  def new
    @midterm = Midterm.new
  end

  # GET /midterms/1/edit
  def edit
  end

  # POST /midterms
  # POST /midterms.json
  def create
    @midterm = Midterm.new(midterm_params)

    respond_to do |format|
      if @midterm.save
        format.html { redirect_to @midterm, notice: 'Midterm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @midterm }
      else
        format.html { render action: 'new' }
        format.json { render json: @midterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /midterms/1
  # PATCH/PUT /midterms/1.json
  def update
    respond_to do |format|
      if @midterm.update(midterm_params)
        format.html { redirect_to @midterm, notice: 'Midterm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @midterm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midterms/1
  # DELETE /midterms/1.json
  def destroy
    @midterm.destroy
    respond_to do |format|
      format.html { redirect_to midterms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_midterm
      @midterm = Midterm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def midterm_params
      params.require(:midterm).permit(:school, :courseCode, :year, :corrected, :professor, :semester)
    end
end
