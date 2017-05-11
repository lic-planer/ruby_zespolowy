class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  def index
    @search = Director.search(params[:q])
    @directors = @search.result
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
    @director = Director.new
  end

  def edit
    @director = Director.find(params[:id])
  end

  def create
    @director = Director.new(director_params)

    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Dodano reżysera.' }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to @director, notice: 'Zaktualizowano reżysera.' }
        format.json { render :show, status: :ok, location: @director }
      else
        format.html { render :edit }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directors_url, notice: 'Usunięto reżysera.' }
      format.json { head :no_content }
    end
  end

  private
    def set_director
      @director = Director.find(params[:id])
    end

    def director_params
      params.require(:director).permit(:name, :last_name, :date_birth)
    end
end
