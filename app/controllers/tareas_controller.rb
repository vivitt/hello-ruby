class TareasController < ApplicationController
  before_action :set_tarea, only: %i[ show edit update destroy ]

  # GET /tareas or /tareas.json
  def index
    @tareas = Tarea.all
  end

  # GET /tareas/1 or /tareas/1.json
  def show
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
  end

  # GET /tareas/1/edit
  def edit
  end

  # POST /tareas or /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to root_url(@tarea), notice: "Tarea was successfully created." }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1 or /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to root_url(@tarea), notice: "Tarea was successfully updated." }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1 or /tareas/1.json
  def destroy
    @tarea.destroy

    respond_to do |format|
      format.html { redirect_to tareas_url, notice: "Tarea was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarea_params
      params.require(:tarea).permit(:descr, :completed)
    end
end
