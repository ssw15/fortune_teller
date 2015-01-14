class ZodiacsController < ApplicationController
  def sign


    @prediction = "Business and financial success makes you happy and satisfied, Pisces. You also look forward to moving on. The downside of this flush period is that people who aren't particularly trustworthy might decide to latch onto your coattails for their own purposes. Some might even ask for loans. Be careful about the ones you assist. They might not be honest with you. Don't fall for any sob stories."

    render 'sign'
  end
end
