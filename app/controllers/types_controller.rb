class TypesController < ApplicationController
  before_action :set_type

  def show
    @type = Type.find(params[:id])
  end

  private
    def type_params
      params.require(:type).permit(:name)
    end

    def set_type
      @type = Type.find(params[:id])
    end

end
