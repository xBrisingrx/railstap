class MarcaVehiculosController < ApplicationController

  # In the index show all marcas
  def index
    @marcas = MarcaVehiculo.all
    @nueva_marca = MarcaVehiculo.new
  end

  def ajax_marcas
    @marcas = MarcaVehiculo.all
    respond_to do |format|
      format.js
      format.json @marcas
    end
  end


  def new
    @marca = MarcaVehiculo.new
  end

  # def edit
  #   @persona = Persona.find(params[:id])
  # end

  def create
    @marca = MarcaVehiculo.new(marca_params)
    @marca.activo = true

    if @marca.save
      redirect_to root_path, notice: "La persona #{@marca.marca} ha sido registrado con exito"
    else
      render new_marca_path
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
  def marca_params
    params.require(:marca_vehiculo).permit(:marca, :activo)
  end
end
