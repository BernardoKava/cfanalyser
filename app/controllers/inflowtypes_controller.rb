class InflowtypesController < ApplicationController
  before_action :set_inflowtype, only: [:show, :edit, :update, :destroy]

  # GET /inflowtypes
  # GET /inflowtypes.json
  def index
    @inflowtypes = Inflowtype.all
  end

  # GET /inflowtypes/1
  # GET /inflowtypes/1.json
  def show
  end

  # GET /inflowtypes/new
  def new
    @inflowtype = Inflowtype.new
  end

  # GET /inflowtypes/1/edit
  def edit
  end

  # POST /inflowtypes
  # POST /inflowtypes.json
  def create
    @inflowtype = Inflowtype.new(inflowtype_params)

    respond_to do |format|
      if @inflowtype.save
        format.html { redirect_to @inflowtype, notice: 'Inflowtype was successfully created.' }
        format.json { render :show, status: :created, location: @inflowtype }
      else
        format.html { render :new }
        format.json { render json: @inflowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inflowtypes/1
  # PATCH/PUT /inflowtypes/1.json
  def update
    respond_to do |format|
      if @inflowtype.update(inflowtype_params)
        format.html { redirect_to @inflowtype, notice: 'Inflowtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @inflowtype }
      else
        format.html { render :edit }
        format.json { render json: @inflowtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inflowtypes/1
  # DELETE /inflowtypes/1.json
  def destroy
    @inflowtype.destroy
    respond_to do |format|
      format.html { redirect_to inflowtypes_url, notice: 'Inflowtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inflowtype
      @inflowtype = Inflowtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inflowtype_params
      params.require(:inflowtype).permit(:name, :description, :system_item, :active)
    end
end
