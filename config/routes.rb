Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky_numbers" })

  get("/lucky",   { :controller => "fortunes", :action => "lucky_numbers" })
  get("/unlucky", { :controller => "fortunes", :action => "unlucky_numbers" })

  # PART 2: VARIABLE ROUTES
  # =======================

  get("/signs/:the_sign",         { :controller => "zodiacs", :action => "sign" })
  get("/creatures/:the_creature", { :controller => "zodiacs", :action => "creature" })
end
