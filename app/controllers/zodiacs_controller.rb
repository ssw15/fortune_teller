class ZodiacsController < ApplicationController
  def index
    @list_of_zodiacs = Zodiac.all
  end


  def sign
    @zodiac = Zodiac.find_by({ :sign => params[:the_sign] })
  end
end
