class EncountersController < ApplicationController
  before_action :authenticate_user!
  def index
    @encounters = Encounter.all

    render("encounter_templates/index.html.erb")
  end

  def show
    @encounter = Encounter.find(params.fetch("id_to_display"))
    @quests = Quest.where(campaign_id: @encounter.campaign_id)
    @mobs = Mob.where(encounter_id: @encounter.id)

    render("encounter_templates/show.html.erb")
  end

  def new_form
    render("encounter_templates/new_form.html.erb")
  end

  def create_row
    @encounter = Encounter.new

    @encounter.name = params.fetch("name")
    @encounter.campaign_id = params.fetch("campaign_id")



    if @encounter.valid?
      @encounter.save

      redirect_to("/encounters/#{@encounter.id}")
    else
      render("encounter_templates/new_form.html.erb")
    end

  end

  def edit_form
    @encounter = Encounter.find(params.fetch("prefill_with_id"))

    render("encounter_templates/edit_form.html.erb")
  end

  def update_row
    @encounter = Encounter.find(params.fetch("id_to_modify"))

    @encounter.name = params.fetch("name")
    @encounter.campaign_id = params.fetch("campaign_id")



    if @encounter.valid?
      @encounter.save

      redirect_to("/encounters/#{@encounter.id}", :notice => "Encounter updated successfully.")
    else
      render("encounter_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @encounter = Encounter.find(params.fetch("id_to_remove"))

    @encounter.destroy


    redirect_to("/campaigns/#{@encounter.campaign_id}")

  end
end
