Rails.application.routes.draw do
  # Routes for the Player resource:

  # CREATE
  get("/players/new", { :controller => "players", :action => "new_form" })
  post("/create_player", { :controller => "players", :action => "create_row" })

  # READ
  get("/players", { :controller => "players", :action => "index" })
  get("/players/:id_to_display", { :controller => "players", :action => "show" })

  # UPDATE
  get("/players/:prefill_with_id/edit", { :controller => "players", :action => "edit_form" })
  post("/update_player/:id_to_modify", { :controller => "players", :action => "update_row" })

  # DELETE
  get("/delete_player/:id_to_remove", { :controller => "players", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
