class PersonasController < ApplicationController
  # In the index show all persona
  def index
    @personas = Persona.all
  end

  # Show one persona
  def show
    @persona = Persona.find(params[:id])
  end

  def new
    @persona = Persona.new
    @empresas = Empresa.all
  end

  def edit
    @persona = Persona.find(params[:id])
  end

  def create
    @persona = Persona.new(persona_params)
    @persona.activo = true

    if @persona.save
      redirect_to @persona, notice: "La persona #{@persona.nombre} ha sido registrado con exito"
    else
      render 'new'
    end # end if
  end # End create

  def update
    @persona = Persona.find(params[:id])

    if @persona.update(persona_params)
      redirect_to @persona
    else
      render 'edit'
    end # end if
  end # end update

  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy

    redirect_to empresa_path
  end


  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def persona_params
    params.require(:persona).permit(:num_legajo, :nombre,:apellido, :dni, :fecha_vencimiento_dni, 
    								:pdf_dni_path, :fecha_nacimiento, :pdf_fecha_nacimiento_path, 
    								:cuil, :pdf_cuil_path, :nacionalidad, :domicilio, :telefono, :activo, :empresa_id)
  end
end
