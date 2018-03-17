class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all

    render("weapon_templates/index.html.erb")
  end

  def show
    @weapon = Weapon.find(params.fetch("id_to_display"))

    render("weapon_templates/show.html.erb")
  end

  def new_form
    render("weapon_templates/new_form.html.erb")
  end

  def create_row
    @weapon = Weapon.new


    @weapon.name = params.fetch("name")

    @weapon.simple = params.fetch("simple")

    @weapon.ranged = params.fetch("ranged")

    @weapon.mindamage = params.fetch("mindamage")

    @weapon.maxdamage = params.fetch("maxdamage")



    if @weapon.valid?
      @weapon.save

      redirect_to("/weapons/#{@weapon.id}")
    else
      render("weapon_templates/new_form.html.erb")
    end

  end

  def edit_form
    @weapon = Weapon.find(params.fetch("prefill_with_id"))

    render("weapon_templates/edit_form.html.erb")
  end

  def update_row
    @weapon = Weapon.find(params.fetch("id_to_modify"))


    @weapon.name = params.fetch("name")

    @weapon.simple = params.fetch("simple")

    @weapon.ranged = params.fetch("ranged")

    @weapon.mindamage = params.fetch("mindamage")

    @weapon.maxdamage = params.fetch("maxdamage")



    if @weapon.valid?
      @weapon.save

      redirect_to("/weapons/#{@weapon.id}", :notice => "Weapon updated successfully.")
    else
      render("weapon_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @weapon = Weapon.find(params.fetch("id_to_remove"))

    @weapon.destroy


    redirect_to("/weapons", :notice => "Weapon deleted successfully.")

  end
end
