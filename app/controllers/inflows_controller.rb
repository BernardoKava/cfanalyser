class InflowsController < ApplicationController
  before_action :set_inflow, only: [:show, :edit, :update, :destroy]

  # GET /inflows
  # GET /inflows.json
  def index
    @inflows = Inflow.all.paginate(page: params[:page], :per_page => 10).order("created_at DESC")
  end

  # GET /inflows/1
  # GET /inflows/1.json
  def show
    @id = @inflow.id
  end

  # GET /inflows/new
  def new
    @inflow = Inflow.new
  end

  # GET /inflows/1/edit
  def edit
  end

  # POST /inflows
  # POST /inflows.json
  def create
    @inflow = Inflow.new(inflow_params)

    respond_to do |format|
      if @inflow.save
        format.html { redirect_to @inflow, notice: 'Inflow was successfully created.' }
        format.json { render :show, status: :created, location: @inflow }
      else
        format.html { render :new }
        format.json { render json: @inflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inflows/1
  # PATCH/PUT /inflows/1.json
  def update
    respond_to do |format|
      if @inflow.update(inflow_params)
        format.html { redirect_to @inflow, notice: 'Inflow was successfully updated.' }
        format.json { render :show, status: :ok, location: @inflow }
      else
        format.html { render :edit }
        format.json { render json: @inflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inflows/1
  # DELETE /inflows/1.json
  def destroy
    @inflow.destroy
    respond_to do |format|
      format.html { redirect_to inflows_url, notice: 'Inflow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inflow
      @inflow = Inflow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inflow_params
      params.require(:inflow).permit(:amount, :details, :user_id, :cashflow_id, :year, :month, :person_id, :inflowtype_id, :date_posted, :rationale, :bankaccount_id, :follow_up)
    end
end
