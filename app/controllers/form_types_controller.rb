class FormTypesController < ApplicationController
  before_action :set_form_type, only: [:show, :edit, :update, :destroy]

  # GET /form_types
  # GET /form_types.json
  def index
    # @form_types = FormType.all
    @form_types = FormType.select([:number, :form_name]).distinct
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_form_type
    @form_type = FormType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def form_type_params
    params.require(:form_type).permit(:references, :number, :form_name)
  end
end
