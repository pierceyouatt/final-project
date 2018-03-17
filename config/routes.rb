Rails.application.routes.draw do

  devise_for :users

  root 'campaigns#index'

  # Routes for the Girding resource:

  # CREATE
  get("/girdings/new", { :controller => "girdings", :action => "new_form" })
  post("/create_girding", { :controller => "girdings", :action => "create_row" })

  # READ
  get("/girdings", { :controller => "girdings", :action => "index" })
  get("/girdings/:id_to_display", { :controller => "girdings", :action => "show" })

  # UPDATE
  get("/girdings/:prefill_with_id/edit", { :controller => "girdings", :action => "edit_form" })
  post("/update_girding/:id_to_modify", { :controller => "girdings", :action => "update_row" })

  # DELETE
  get("/delete_girding/:id_to_remove", { :controller => "girdings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Wielding resource:

  # CREATE
  get("/wieldings/new", { :controller => "wieldings", :action => "new_form" })
  post("/create_wielding", { :controller => "wieldings", :action => "create_row" })

  # READ
  get("/wieldings", { :controller => "wieldings", :action => "index" })
  get("/wieldings/:id_to_display", { :controller => "wieldings", :action => "show" })

  # UPDATE
  get("/wieldings/:prefill_with_id/edit", { :controller => "wieldings", :action => "edit_form" })
  post("/update_wielding/:id_to_modify", { :controller => "wieldings", :action => "update_row" })

  # DELETE
  get("/delete_wielding/:id_to_remove", { :controller => "wieldings", :action => "destroy_row" })

  #------------------------------

  # Routes for the Armor resource:

  # CREATE
  get("/armors/new", { :controller => "armors", :action => "new_form" })
  post("/create_armor", { :controller => "armors", :action => "create_row" })

  # READ
  get("/armors", { :controller => "armors", :action => "index" })
  get("/armors/:id_to_display", { :controller => "armors", :action => "show" })

  # UPDATE
  get("/armors/:prefill_with_id/edit", { :controller => "armors", :action => "edit_form" })
  post("/update_armor/:id_to_modify", { :controller => "armors", :action => "update_row" })

  # DELETE
  get("/delete_armor/:id_to_remove", { :controller => "armors", :action => "destroy_row" })

  #------------------------------

  # Routes for the Weapon resource:

  # CREATE
  get("/weapons/new", { :controller => "weapons", :action => "new_form" })
  post("/create_weapon", { :controller => "weapons", :action => "create_row" })

  # READ
  get("/weapons", { :controller => "weapons", :action => "index" })
  get("/weapons/:id_to_display", { :controller => "weapons", :action => "show" })

  # UPDATE
  get("/weapons/:prefill_with_id/edit", { :controller => "weapons", :action => "edit_form" })
  post("/update_weapon/:id_to_modify", { :controller => "weapons", :action => "update_row" })

  # DELETE
  get("/delete_weapon/:id_to_remove", { :controller => "weapons", :action => "destroy_row" })

  #------------------------------

  # Routes for the Mob resource:

  # CREATE
  get("/mobs/new", { :controller => "mobs", :action => "new_form" })
  post("/create_mob", { :controller => "mobs", :action => "create_row" })

  # READ
  get("/mobs", { :controller => "mobs", :action => "index" })
  get("/mobs/:id_to_display", { :controller => "mobs", :action => "show" })

  # UPDATE
  get("/mobs/:prefill_with_id/edit", { :controller => "mobs", :action => "edit_form" })
  post("/update_mob/:id_to_modify", { :controller => "mobs", :action => "update_row" })

  # DELETE
  get("/delete_mob/:id_to_remove", { :controller => "mobs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Quest resource:

  # CREATE
  get("/quests/new", { :controller => "quests", :action => "new_form" })
  post("/create_quest", { :controller => "quests", :action => "create_row" })

  # READ
  get("/quests", { :controller => "quests", :action => "index" })
  get("/quests/:id_to_display", { :controller => "quests", :action => "show" })

  # UPDATE
  get("/quests/:prefill_with_id/edit", { :controller => "quests", :action => "edit_form" })
  post("/update_quest/:id_to_modify", { :controller => "quests", :action => "update_row" })

  # DELETE
  get("/delete_quest/:id_to_remove", { :controller => "quests", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pc resource:

  # CREATE
  get("/pcs/new", { :controller => "pcs", :action => "new_form" })
  post("/create_pc", { :controller => "pcs", :action => "create_row" })

  # READ
  get("/pcs", { :controller => "pcs", :action => "index" })
  get("/pcs/:id_to_display", { :controller => "pcs", :action => "show" })

  # UPDATE
  get("/pcs/:prefill_with_id/edit", { :controller => "pcs", :action => "edit_form" })
  post("/update_pc/:id_to_modify", { :controller => "pcs", :action => "update_row" })

  # DELETE
  get("/delete_pc/:id_to_remove", { :controller => "pcs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Encounter resource:

  # CREATE
  get("/encounters/new", { :controller => "encounters", :action => "new_form" })
  post("/create_encounter", { :controller => "encounters", :action => "create_row" })

  # READ
  get("/encounters", { :controller => "encounters", :action => "index" })
  get("/encounters/:id_to_display", { :controller => "encounters", :action => "show" })

  # UPDATE
  get("/encounters/:prefill_with_id/edit", { :controller => "encounters", :action => "edit_form" })
  post("/update_encounter/:id_to_modify", { :controller => "encounters", :action => "update_row" })

  # DELETE
  get("/delete_encounter/:id_to_remove", { :controller => "encounters", :action => "destroy_row" })


  #------------------------------
  # Routes for the Campaign resource:

  # CREATE
  get("/campaigns/new", { :controller => "campaigns", :action => "new_form" })
  post("/create_campaign", { :controller => "campaigns", :action => "create_row" })

  # READ
  get("/campaigns", { :controller => "campaigns", :action => "index" })
  get("/campaigns/:id_to_display", { :controller => "campaigns", :action => "show" })

  # UPDATE
  get("/campaigns/:prefill_with_id/edit", { :controller => "campaigns", :action => "edit_form" })
  post("/update_campaign/:id_to_modify", { :controller => "campaigns", :action => "update_row" })

  # DELETE
  get("/delete_campaign/:id_to_remove", { :controller => "campaigns", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
