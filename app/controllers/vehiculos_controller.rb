class VehiculosController < ApplicationController

  # In the index show all vehiculos
  def index
    @vehiculos = Vehiculo.all
  end

  # Show one vehiculo
  def show
    @vehiculo = Vehiculo.find(params[:id])
  end

  def new
    @vehiculo = Vehiculo.new
    @empresas = Empresa.all
    @marcas = MarcaVehiculo.all
    @tipos = TipoVehiculo.all
  end

  def edit
    @empresas = Empresa.all
    @vehiculo = Vehiculo.find(params[:id])
  end

  def create
    @vehiculo = Vehiculo.new(vehiculo_params)
    @vehiculo.activo = true

    if @vehiculo.save
      redirect_to @vehiculo, notice: "La vehiculo #{@vehiculo.nombre} ha sido registrado con exito"
    else
      render 'new'
    end # end if
  end # End create

  def update
    @vehiculo = Vehiculo.find(params[:id])

    if @vehiculo.update(vehiculo_params)
      redirect_to @vehiculo
    else
      render 'edit'
    end # end if
  end # end update

  def destroy
    @vehiculo = Vehiculo.find(params[:id])
    @vehiculo.destroy

    redirect_to vehiculo_path
  end


  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def vehiculo_params
    params.require(:vehiculo).permit(:interno, :dominio, :anio, :num_chasis, 
    									:num_motor, :cant_asientos, :empresa_id, 
    									:observaciones, :activo, :marca_vehiculo_id, 
    									:modelo_vehiculo_id, :tipo_vehiculo_id)
  end

end
