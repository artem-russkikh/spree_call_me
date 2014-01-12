class Spree::Admin::CallbacksController < Spree::Admin::BaseController
  before_action :set_spree_admin_callback, only: [:show, :edit, :update, :destroy]

  # GET /spree/admin/callbacks
  def index
    @spree_admin_callbacks = Spree::CallBack.all
  end

  # GET /spree/admin/callbacks/1
  def show
  end

  # GET /spree/admin/callbacks/new
  def new
    @spree_admin_callback = Spree::CallBack.new
  end

  # GET /spree/admin/callbacks/1/edit
  def edit
  end

  # POST /spree/admin/callbacks
  def create
    @spree_admin_callback = Spree::CallBack.new(spree_admin_callback_params)

    if @spree_admin_callback.save
      redirect_to admin_callback_path(@spree_admin_callback), notice: Spree.t("spree_call_me.notice.created")
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spree/admin/callbacks/1
  def update
    if @spree_admin_callback.update(spree_admin_callback_params)
      redirect_to admin_callback_path(@spree_admin_callback), notice: Spree.t("spree_call_me.notice.updated")
    else
      render action: 'edit'
    end
  end

  # DELETE /spree/admin/callbacks/1
  def destroy
    @spree_admin_callback.destroy
    redirect_to :back, notice: Spree.t("spree_call_me.notice.destroyed")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spree_admin_callback
      @spree_admin_callback = Spree::CallBack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spree_admin_callback_params
      params.require(:call_back).permit(:name, :phone, :comment)
    end
end
