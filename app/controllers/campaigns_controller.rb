class CampaignsController < ApplicationController
  before_action :authenticate_user!
  def index
    @campaigns = Campaign.where(user_id: current_user.id)
    @pcs = Pc.where(user_id: current_user.id)

    render("campaign_templates/index.html.erb")
  end

  def show
    @campaign = Campaign.find(params.fetch("id_to_display"))
    @encounters = Encounter.where(campaign_id: @campaign.id)
    @quests = Quest.where(campaign_id: @campaign.id)

    render("campaign_templates/show.html.erb")
  end

  def new_form
    render("campaign_templates/new_form.html.erb")
  end

  def create_row
    @campaign = Campaign.new


    @campaign.user_id = params.fetch("user_id").to_i
    @campaign.name = params.fetch("name")


    if @campaign.valid?
      @campaign.save

      redirect_to("/campaigns/#{@campaign.id}")
    else
      render("campaign_templates/new_form.html.erb")
    end

  end

  def edit_form
    @campaign = Campaign.find(params.fetch("prefill_with_id"))

    render("campaign_templates/edit_form.html.erb")
  end

  def update_row
    @campaign = Campaign.find(params.fetch("id_to_modify"))


    @campaign.user_id = params.fetch("user_id").to_i
    @campaign.name = params.fetch("name")



    if @campaign.valid?
      @campaign.save

      redirect_to("/campaigns/#{@campaign.id}", :notice => "Campaign updated successfully.")
    else
      render("campaign_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @campaign = Campaign.find(params.fetch("id_to_remove"))

    @campaign.destroy


    redirect_to("/campaigns", :notice => "Campaign deleted successfully.")

  end
end
