class QuestsController < ApplicationController
  before_action :authenticate_user!
  def index
    @quests = Quest.all

    render("quest_templates/index.html.erb")
  end

  def show
    @quest = Quest.find(params.fetch("id_to_display"))

    render("quest_templates/show.html.erb")
  end

  def new_form
    render("quest_templates/new_form.html.erb")
  end

  def create_row
    @quest = Quest.new


    @quest.campaign_id = params.fetch("campaign_id")

    @quest.pc_id = params.fetch("pc_id")



    if @quest.valid?
      @quest.save

      redirect_to("/campaigns/#{@quest.campaign_id}")
    else
      render("quest_templates/new_form.html.erb")
    end

  end

  def edit_form
    @quest = Quest.find(params.fetch("prefill_with_id"))

    render("quest_templates/edit_form.html.erb")
  end

  def update_row
    @quest = Quest.find(params.fetch("id_to_modify"))


    @quest.campaign_id = params.fetch("campaign_id")

    @quest.pc_id = params.fetch("pc_id")



    if @quest.valid?
      @quest.save

      redirect_to("/quests/#{@quest.id}", :notice => "Quest updated successfully.")
    else
      render("quest_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @quest = Quest.find(params.fetch("id_to_remove"))

    @quest.destroy


    redirect_to("/campaigns/#{@quest.campaign_id}")

  end
end
