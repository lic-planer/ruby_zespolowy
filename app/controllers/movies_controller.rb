class MoviesController < ApplicationController

  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @search = Movie.search(params[:q])
    @movies = @search.result.page(params[:page]).per(9)
    @types = Type.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new

  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Dodano film.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Zaktualizowano film.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Usunięto film.' }
      format.json { head :no_content }
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :country, :year, :image, :director_id, :type_id, :trailer)
    end

    def set_movie
      @movie = Movie.find(params[:id])
    end

end
