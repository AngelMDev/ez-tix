class AuditoriaController < ApplicationController

  def new
    @auditoria = Auditorium.all
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.create(auditorium_params)
    respond_to do |format|
      if @auditorium.persisted? 
        format.html { redirect_to auditoria_path }
        format.js
        #format.json { render json: @auditorium }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @auditorium.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    auditorium = Auditorium.find(params[:id])
    auditorium.destroy
    respond_to do |format|
      format.html { redirect_to auditoria_path }
      format.json { head :no_content }
      format.js
    end
  end

  private

  def auditorium_params
    params.require(:auditorium).permit(:name, :capacity)
  end

end