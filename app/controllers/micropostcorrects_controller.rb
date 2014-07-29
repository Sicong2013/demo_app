class MicropostcorrectsController < ApplicationController
  before_action :set_micropostcorrect, only: [:show, :edit, :update, :destroy]

  # GET /micropostcorrects
  # GET /micropostcorrects.json
  def index
    @micropostcorrects = Micropostcorrect.all
  end

  # GET /micropostcorrects/1
  # GET /micropostcorrects/1.json
  def show
  end

  # GET /micropostcorrects/new
  def new
    @micropostcorrect = Micropostcorrect.new
  end

  # GET /micropostcorrects/1/edit
  def edit
  end

  # POST /micropostcorrects
  # POST /micropostcorrects.json
  def create
    @micropostcorrect = Micropostcorrect.new(micropostcorrect_params)

    respond_to do |format|
      if @micropostcorrect.save
        format.html { redirect_to @micropostcorrect, notice: 'Micropostcorrect was successfully created.' }
        format.json { render action: 'show', status: :created, location: @micropostcorrect }
      else
        format.html { render action: 'new' }
        format.json { render json: @micropostcorrect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropostcorrects/1
  # PATCH/PUT /micropostcorrects/1.json
  def update
    respond_to do |format|
      if @micropostcorrect.update(micropostcorrect_params)
        format.html { redirect_to @micropostcorrect, notice: 'Micropostcorrect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micropostcorrect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropostcorrects/1
  # DELETE /micropostcorrects/1.json
  def destroy
    @micropostcorrect.destroy
    respond_to do |format|
      format.html { redirect_to micropostcorrects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropostcorrect
      @micropostcorrect = Micropostcorrect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropostcorrect_params
      params.require(:micropostcorrect).permit(:content, :user_id)
    end
end
