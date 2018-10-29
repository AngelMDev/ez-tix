class AuditoriaController < ApplicationController
  before_action :require_admin
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

  def edit
    @auditorium = Auditorium.find(params[:id])
  end

  def update
    auditorium = Auditorium.find(params[:id])
    if auditorium.update_attributes(auditorium_params)
      flash[:success] = "Auditorium updated successfully!"
      redirect_to new_auditorium_path
    else   
      flash[:danger] = auditorium.errors.full_messages.to_sentence
      redirect_to new_auditorium_path
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