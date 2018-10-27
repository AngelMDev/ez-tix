class AuditoriaController < ApplicationController

  def new
    @auditorium = Auditorium.new
  end

  def create
    auditorium = Auditorium.create(auditorium_params)
    if auditorium.persist?
      #TODO redirect
    end
  end

  private

  def auditorium_params
    params.require(:auditorium).permit(:capacity)
  end

end