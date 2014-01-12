class Spree::CallBacksController < ApplicationController
  def notice
  end

  def new
    @spree_admin_callback = Spree::CallBack.new
  end

  def create
    @spree_admin_callback = Spree::CallBack.new(spree_admin_callback_params)
    Spree::CallBackMailer.notificate.deliver if @spree_admin_callback.save
    render template: 'spree/call_backs/create'
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
