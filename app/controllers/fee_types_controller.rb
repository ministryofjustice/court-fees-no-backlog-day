class FeeTypesController < ApplicationController
  before_action :set_fee_type, only: :show

  # GET /fee_types
  # GET /fee_types.json
  def index
    @fee_types = FeeType.all
  end

  # GET /fee_types/1
  # GET /fee_types/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fee_type
      @fee_type = FeeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fee_type_params
      params.require(:fee_type).permit(:title, :amount)
    end
end
