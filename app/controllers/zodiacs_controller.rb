class ZodiacsController < ApplicationController
  def index
    @list_of_zodiacs = Zodiac.all
  end

  def show
    @zodiac = Zodiac.find(params[:id])
  end

  def new_form
  end

  def edit_form
    @zodiac = Zodiac.find(params[:id])

    Zodiac.find_by :id => 3
  end

  def create_row
    @zodiac = Zodiac.new

    @zodiac.sign = params[:sign]
    @zodiac.creature = params[:creature]
    @zodiac.fortune = params[:fortune]

    @zodiac.save

    redirect_to "http://localhost:3000/zodiacs/#{@zodiac.id}", :notice => "Successfully created zodiac."
  end

  def update_row
    @zodiac = Zodiac.find(params[:id])

    @zodiac.sign = params[:sign]
    @zodiac.creature = params[:creature]
    @zodiac.fortune = params[:fortune]

    @zodiac.save

    redirect_to("http://localhost:3000/zodiacs/#{@zodiac.id}", :notice => "Successfully updated zodiac.")
  end

  def destroy_row
    @zodiac = Zodiac.find(params[:id])

    @zodiac.destroy

    redirect_to("http://localhost:3000/all_zodiacs", :notice => "Successfully destroyed zodiac.")
  end
end








