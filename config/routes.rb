Rails.application.routes.draw do
  # Routes for the Goalkeeper resource:

  # CREATE
  get("/goalkeepers/new", { :controller => "goalkeepers", :action => "new_form" })
  post("/create_goalkeeper", { :controller => "goalkeepers", :action => "create_row" })

  # READ
  get("/goalkeepers", { :controller => "goalkeepers", :action => "index" })
  get("/goalkeepers/:id_to_display", { :controller => "goalkeepers", :action => "show" })

  # UPDATE
  get("/goalkeepers/:prefill_with_id/edit", { :controller => "goalkeepers", :action => "edit_form" })
  post("/update_goalkeeper/:id_to_modify", { :controller => "goalkeepers", :action => "update_row" })

  # DELETE
  get("/delete_goalkeeper/:id_to_remove", { :controller => "goalkeepers", :action => "destroy_row" })

  #------------------------------

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
