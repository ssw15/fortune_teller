class ZodiacsController < ApplicationController
  def sign
    @zodiac = Zodiac.find_by({ :sign => params[:the_sign] })
  end
end
