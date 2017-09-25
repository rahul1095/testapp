class FinalresultsController < ApplicationController
  before_action :set_finalresult, only: [:show, :edit, :update, :destroy]

  # GET /finalresults
  # GET /finalresults.json
  def index
    @finalresults = Finalresult.all
  end

  # GET /finalresults/1
  # GET /finalresults/1.json
  def show
  end

  # GET /finalresults/new
  def new
    @finalresult = Finalresult.new
  end

  # GET /finalresults/1/edit
  def edit
  end

  # POST /finalresults
  # POST /finalresults.json
  def create
    @finalresult = Finalresult.new(finalresult_params)

    respond_to do |format|
      if @finalresult.save
        format.html { redirect_to :back, notice: 'Finalresult was successfully created.' }
        format.json { render :show, status: :created, location: @finalresult }
      else
        format.html { render :new }
        format.json { render json: @finalresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finalresults/1
  # PATCH/PUT /finalresults/1.json
  def update
    respond_to do |format|
      if @finalresult.update(finalresult_params)
        format.html { redirect_to @finalresult, notice: 'Finalresult was successfully updated.' }
        format.json { render :show, status: :ok, location: @finalresult }
      else
        format.html { render :edit }
        format.json { render json: @finalresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finalresults/1
  # DELETE /finalresults/1.json
  def destroy
    @finalresult.destroy
    respond_to do |format|
      format.html { redirect_to finalresults_url, notice: 'Finalresult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finalresult
      @finalresult = Finalresult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finalresult_params
      params.require(:finalresult).permit(:result, :user_id, :answer_id)
    end
end
