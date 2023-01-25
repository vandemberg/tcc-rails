class SocialGroupsController < DashboardController
  before_action :set_social_group, only: %i[ show edit update destroy ]

  # GET /social_groups or /social_groups.json
  def index
    @social_groups = SocialGroup.all
  end

  # GET /social_groups/1 or /social_groups/1.json
  def show
  end

  # GET /social_groups/new
  def new
    @social_group = SocialGroup.new
  end

  # GET /social_groups/1/edit
  def edit
  end

  # POST /social_groups or /social_groups.json
  def create
    @social_group = SocialGroup.new(social_group_params)

    respond_to do |format|
      if @social_group.save
        format.html { redirect_to social_group_url(@social_group), notice: "Social group was successfully created." }
        format.json { render :show, status: :created, location: @social_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_groups/1 or /social_groups/1.json
  def update
    respond_to do |format|
      if @social_group.update(social_group_params)
        format.html { redirect_to social_group_url(@social_group), notice: "Social group was successfully updated." }
        format.json { render :show, status: :ok, location: @social_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_groups/1 or /social_groups/1.json
  def destroy
    @social_group.destroy

    respond_to do |format|
      format.html { redirect_to social_groups_url, notice: "Social group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_group
      @social_group = SocialGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_group_params
      params.require(:social_group).permit(:name, :neighbourhood_id, :person_id, :group_type, :phone, :email, :notes)
    end
end
