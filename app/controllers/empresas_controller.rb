class EmpresasController < ApplicationController
  # In the index show all empresa
  def index
    @empresas = Empresa.all
  end

  # Show one empresa
  def show
    @empresa = Empresa.find(params[:id])
  end

  def new
    @empresa = Empresa.new
  end

  def edit
    @empresa = Empresa.find(params[:id])
  end

  def create
    @empresa = Empresa.new(empresa_params)
    @empresa.activo = true

    if @empresa.save
      redirect_to empresas_path, notice: "El cliente #{@empresa.nombre} ha sido registrado con exito"
    else
      render 'new'
    end # end if
  end # End create

  def update
    @empresa = Empresa.find(params[:id])

    if @empresa.update(empresa_params)
      redirect_to @empresa
    else
      render 'edit'
    end # end if
  end # end update

  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.activo = false

    redirect_to empresa_path
  end


  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def empresa_params
    params.require(:empresa).permit(:cuit, :nombre, :activo)
  end
end
