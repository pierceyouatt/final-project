class MobsController < ApplicationController
  def index
    @mobs = Mob.all

    render("mob_templates/index.html.erb")
  end

  def show
    @mob = Mob.find(params.fetch("id_to_display"))

    render("mob_templates/show.html.erb")
  end

  def new_form
    render("mob_templates/new_form.html.erb")
  end

  def create_row
    @mob = Mob.new


    @mob.name = params.fetch("name")

    @mob.hp = params.fetch("hp")

    @mob.encounter_id = params.fetch("encounter_id")

    @mob.weapon_id = params.fetch("weapon_id")

    if @mob.valid?
      @mob.save

      redirect_to("/mobs/#{@mob.id}")
    else
      render("mob_templates/new_form.html.erb")
    end

  end

  def edit_form
    @mob = Mob.find(params.fetch("prefill_with_id"))

    render("mob_templates/edit_form.html.erb")
  end

  def update_row
    @mob = Mob.find(params.fetch("id_to_modify"))


    @mob.name = params.fetch("name")

    @mob.hp = params.fetch("hp")

    @mob.encounter_id = params.fetch("encounter_id")

    @mob.weapon_id = params.fetch("weapon_id")

    if @mob.valid?
      @mob.save

      redirect_to("/mobs/#{@mob.id}", :notice => "Mob updated successfully.")
    else
      render("mob_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @mob = Mob.find(params.fetch("id_to_remove"))

    @mob.destroy


    redirect_to("/mobs", :notice => "Mob deleted successfully.")

  end
end
