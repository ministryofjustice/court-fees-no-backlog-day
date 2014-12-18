class FeesController < ApplicationController
  before_action :set_fee, only: :show

  # GET /fees
  # GET /fees.json
  def index
    @fees = Fee.all
  end

  # GET /fees/1
  # GET /fees/1.json
  def show
    respond_to do |format|
      format.html
      format.json do
        render json: @fee, only: [:title, :description],
               include: {
                 fee_type: {
                   only: [:title, :amount],
                   include: {
                     form_type: {
                       only: [:number, :form_name]
                     }
                   }
                 }
               }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fee
      @fee = Fee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fee_params
      params.require(:fee).permit(:title, :description)
    end
end
