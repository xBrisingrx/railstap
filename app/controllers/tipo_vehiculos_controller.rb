class TipoVehiculosController < ApplicationController

  # In the index show all tipos
  def index
    @tipos = TipoVehiculo.all
  end

  # Show one tipo
  def show
    @tipo = TipoVehiculo.find(params[:id])
  end

  def new
    @tipo = TipoVehiculo.new
  end

  def edit
    @tipo = TipoVehiculo.find(params[:id])
  end

  def create
    @tipo = TipoVehiculo.new(tipo_params)
    @tipo.activo = true

    if @tipo.save
      redirect_to @tipo, notice: "El tipo de vehiculo #{@tipo.tipo} ha sido registrado con exito"
    else
      render 'new'
    end # end if
  end # End create

  def update
    @tipo = TipoVehiculo.find(params[:id])

    if @tipo.update(tipo_params)
      redirect_to @tipo
    else
      render 'edit'
    end # end if
  end # end update

  def destroy
    @tipo = TipoVehiculo.find(params[:id])
    @tipo.activo = false
    redirect_to tipo_vechiculos_path
  end


  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def tipo_params
    params.require(:tipo).permit(:tipo, :activo)
  end
end
