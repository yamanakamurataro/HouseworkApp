class HouseworkTypesController < ApplicationController
  before_action :set_housework_type, only: [:show, :edit, :update, :destroy]

  # GET /housework_types
  # GET /housework_types.json
  def index
    @housework_types = HouseworkType.all
  end

  # GET /housework_types/1
  # GET /housework_types/1.json
  def show
  end

  # GET /housework_types/new
  def new
    @housework_type = HouseworkType.new
  end

  # GET /housework_types/1/edit
  def edit
  end

  # POST /housework_types
  # POST /housework_types.json
  def create
    @housework_type = HouseworkType.new(housework_type_params)

    respond_to do |format|
      if @housework_type.save
        format.html { redirect_to @housework_type, notice: 'Housework type was successfully created.' }
        format.json { render :show, status: :created, location: @housework_type }
      else
        format.html { render :new }
        format.json { render json: @housework_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housework_types/1
  # PATCH/PUT /housework_types/1.json
  def update
    respond_to do |format|
      if @housework_type.update(housework_type_params)
        format.html { redirect_to @housework_type, notice: 'Housework type was successfully updated.' }
        format.json { render :show, status: :ok, location: @housework_type }
      else
        format.html { render :edit }
        format.json { render json: @housework_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housework_types/1
  # DELETE /housework_types/1.json
  def destroy
    @housework_type.destroy
    respond_to do |format|
      format.html { redirect_to housework_types_url, notice: 'Housework type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housework_type
      @housework_type = HouseworkType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housework_type_params
      params.require(:housework_type).permit(:name)
    end
end
