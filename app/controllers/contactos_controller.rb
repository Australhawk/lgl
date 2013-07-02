class ContactosController < ApplicationController
  before_action :set_contacto, only: [:show, :edit, :update, :destroy]
  skip_authorization_check only: [:new,:create]
  # GET /contactos
  def index
    @contactos = Contacto.all
    authorize! :manage, @contacto
  end

  # GET /contactos/1
  def show
    if can? :manage, @contacto
      authorize! :manage, @contacto
    else
      authorize! :read, @contacto
      redirect_to root_path, notice: 'Formulario de Contacto Enviado Correctamente'
    end
    
  end

  # GET /contactos/new
  def new
    @contacto = Contacto.new
  end

  # GET /contactos/1/edit
  def edit
    authorize! :manage, @contacto
  end

  # POST /contactos
  def create
    @contacto = Contacto.new(contacto_params)

    if @contacto.save
      redirect_to @contacto, notice: 'Contacto was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /contactos/1
  def update
    authorize! :manage, @contacto
    if @contacto.update(contacto_params)
      redirect_to @contacto, notice: 'Contacto was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /contactos/1
  def destroy
    authorize! :manage, @contacto
    @contacto.destroy
    redirect_to contactos_url, notice: 'Contacto was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contacto_params
      params.require(:contacto).permit(:name, :correo, :mensaje)
    end
end
