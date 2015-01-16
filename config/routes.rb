Rails.application.routes.draw do
  get("/",        { :controller => "fortunes", :action => "lucky_numbers" })

  get("/lucky",   { :controller => "fortunes", :action => "lucky_numbers" })
  get("/unlucky", { :controller => "fortunes", :action => "unlucky_numbers" })

  # ROUTES FOR ZODIAC RESOURCE
  # ==========================

  # Routes for adding a new Zodiac (CREATE)
  get "/zodiacs/new", :controller => "zodiacs", :action => "new_form"
  get("/create_zodiac", { :controller => "zodiacs", :action => "create_row" })

  # Routes for reading Zodiacs (READ)
  get("/all_zodiacs", { :controller => "zodiacs", :action => "index" })
  get("/zodiacs/:id", { :controller => "zodiacs", :action => "show" })

  # Routes for updating Zodiacs (UPDATE)
  get("/zodiacs/:id/edit", { :controller => "zodiacs", :action => "edit_form" } )
  get("/update_zodiac/:id", { :controller => "zodiacs", :action => "update_row" })

  # Routes for deleting Zodiacs (DELETE)
  get("/delete_zodiac/:id", { :controller => "zodiacs", :action => "destroy_row" })

end










