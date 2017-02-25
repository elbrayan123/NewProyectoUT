class PostVacantesController < ApplicationController
  before_action :set_post_vacante, only: [:show, :edit, :update, :destroy]

  # GET /post_vacantes
  # GET /post_vacantes.json
  def index
    @post_vacantes = PostVacante.all
    

    respond_to do  |format|
      format.html #index.html.erb
      format.json {render json: @post_vacantes}
  end
  end

  # GET /post_vacantes/1
  # GET /post_vacantes/1.json
  def show
  end

  # GET /post_vacantes/new
  def new
    @post_vacante = PostVacante.new
  end

  # GET /post_vacantes/1/edit
  def edit
  end

  # POST /post_vacantes
  # POST /post_vacantes.json
  def create
    @post_vacante = PostVacante.new(post_vacante_params)

    respond_to do |format|
      if @post_vacante.save
        format.html { redirect_to @post_vacante, notice: 'Vacante creada con exito.' }
        format.json { render :show, status: :created, location: @post_vacante }
      else
        format.html { render :new }
        format.json { render json: @post_vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_vacantes/1
  # PATCH/PUT /post_vacantes/1.json
  def update
    respond_to do |format|
      if @post_vacante.update(post_vacante_params)
        format.html { redirect_to @post_vacante, notice: 'Vacante actualizada con exito.' }
        format.json { render :show, status: :ok, location: @post_vacante }
      else
        format.html { render :edit }
        format.json { render json: @post_vacante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_vacantes/1
  # DELETE /post_vacantes/1.json
  def destroy
    @post_vacante.destroy
    respond_to do |format|
      format.html { redirect_to post_vacantes_url, notice: 'Vacante eliminada con exito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_vacante
      @post_vacante = PostVacante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_vacante_params
      params.require(:post_vacante).permit(:carrera, :area, :nvacantes, :descripcion)
    end
end
