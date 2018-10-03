class ModeloVehiculosController < ApplicationController
  # protect_from_forgery prepend: true, with: :exception


  # In the index show all marcas
  def index
    # @marca = MarcaVehiculo.all
    @nuevo_modelo = ModeloVehiculo.new
    @modelos = ModeloVehiculo.find(marca_vehiculo_id: params[:idModelo])
    respond_to do |format|
     format.html
     format.json { render :json => @marcas }
    end
  end

  def ajax_modelos
     @modelos = ModeloVehiculo.all
    # render json: @modelos
  end

  # # Show one persona
  # def show
  #   @persona = Persona.find(params[:id])
  # end

  def new
    @marcas = MarcaVehiculo.all
    @modelo = ModeloVehiculo.new
  end

  # def edit
  #   @persona = Persona.find(params[:id])
  # end

  def create
    @modelo = ModeloVehiculo.new(modelo_params)
    @modelo.activo = true

    if @modelo.save
      redirect_to root_path, notice: "La persona #{@modelo.modelo} ha sido registrado con exito"
    else
      render new_modelo_path
    end # end if
  end # End create

  # def update
  #   @persona = Persona.find(params[:id])

  #   if @persona.update(persona_params)
  #     redirect_to @persona
  #   else
  #     render 'edit'
  #   end # end if
  # end # end update

  # def destroy
  #   @persona = Persona.find(params[:id])
  #   @persona.activo = false
  #   redirect_to empresa_path
  # end

  # def dni_unico
  #   # Verifico si existe una persona con ese dni, retorna un booleano
  #    @existe_dni =  Persona.exists?(dni: params[:persona][:dni])
  #     respond_to do |format|
  #       format.json { render json: !@existe_dni}
  #     end
  # end

  # def cuil_unico
  #   # Verifico si existe una persona con ese cuil, retorna un booleano
  #    @existe_cuil =  Persona.exists?(cuil: params[:persona][:cuil])
  #     respond_to do |format|
  #       format.json { render json: !@existe_cuil}
  #     end
  # end



  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def modelo_params
    params.require(:modelo_vehiculo).permit(:modelo,:marca_vehiculo_id, :activo)
  end
end
