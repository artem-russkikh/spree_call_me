class Spree::CallBacksController < ApplicationController

  def notice
  end

  def new
    @spree_admin_callback = Spree::CallBack.new
  end

  def create
    @spree_admin_callback = Spree::CallBack.new(spree_admin_callback_params)

    if @spree_admin_callback.save
      redirect_to callback_notice_path(@spree_admin_callback)
    else
      render action: 'new'
    end
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
