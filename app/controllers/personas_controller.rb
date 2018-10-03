class PersonasController < ApplicationController

  # In the index show all personas
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
      render new_persona_path
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
    @persona.activo = false
    redirect_to empresa_path
  end

  def dni_unico
    # Verifico si existe una persona con ese dni, retorna un booleano
     @existe_dni =  Persona.exists?(dni: params[:persona][:dni])
      respond_to do |format|
        format.json { render json: !@existe_dni}
      end
  end

  def cuil_unico
    # Verifico si existe una persona con ese cuil, retorna un booleano
     @existe_cuil =  Persona.exists?(cuil: params[:persona][:cuil])
      respond_to do |format|
        format.json { render json: !@existe_cuil}
      end
  end



  # Declaro los parametros que son permitidos ingresar por la vista
  private
  def persona_params
    params.require(:persona).permit(:num_legajo, :nombre,:apellido, :dni, :fecha_vencimiento_dni, 
    								:pdf_dni_path, :fecha_nacimiento, :pdf_fecha_nacimiento_path, 
    								:cuil, :pdf_cuil_path, :nacionalidad, :domicilio, :telefono, :activo, :empresa_id)
  end
end
