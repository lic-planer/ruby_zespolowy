class TypesController < ApplicationController

  def show
    @type = Type.find(params[:id])
  end

  private
    def type_params
      params.require(:type).permit(:name)
    end

end
