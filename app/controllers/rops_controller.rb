class RopsController < DashboardController
  before_action :set_rop, only: %i[ show edit update destroy ]

  # GET /rops or /rops.json
  def index
    @rops = Rop.all
  end

  # GET /rops/1 or /rops/1.json
  def show
  end

  # GET /rops/new
  def new
    @rop = Rop.new
  end

  # GET /rops/1/edit
  def edit
  end

  # POST /rops or /rops.json
  def create
    @rop = Rop.new(rop_params)

    respond_to do |format|
      if @rop.save
        format.html { redirect_to rop_url(@rop), notice: "Rop was successfully created." }
        format.json { render :show, status: :created, location: @rop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rops/1 or /rops/1.json
  def update
    respond_to do |format|
      if @rop.update(rop_params)
        format.html { redirect_to rop_url(@rop), notice: "Rop was successfully updated." }
        format.json { render :show, status: :ok, location: @rop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rops/1 or /rops/1.json
  def destroy
    @rop.destroy

    respond_to do |format|
      format.html { redirect_to rops_url, notice: "Rop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rop
      @rop = Rop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rop_params
      params.require(:rop).permit(:name, :neighbourhood_id)
    end
end
