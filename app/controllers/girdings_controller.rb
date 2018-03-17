class GirdingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @girdings = Girding.all

    render("girding_templates/index.html.erb")
  end

  def show
    @girding = Girding.find(params.fetch("id_to_display"))

    render("girding_templates/show.html.erb")
  end

  def new_form
    render("girding_templates/new_form.html.erb")
  end

  def create_row
    @girding = Girding.new


    @girding.armor_id = params.fetch("armor_id")

    @girding.pc_id = params.fetch("pc_id")



    if @girding.valid?
      @girding.save

      redirect_to("/girdings", :notice => "Girding created successfully.")
    else
      render("girding_templates/new_form.html.erb")
    end

  end

  def edit_form
    @girding = Girding.find(params.fetch("prefill_with_id"))

    render("girding_templates/edit_form.html.erb")
  end

  def update_row
    @girding = Girding.find(params.fetch("id_to_modify"))


    @girding.armor_id = params.fetch("armor_id")

    @girding.pc_id = params.fetch("pc_id")



    if @girding.valid?
      @girding.save

      redirect_to("/girdings/#{@girding.id}", :notice => "Girding updated successfully.")
    else
      render("girding_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @girding = Girding.find(params.fetch("id_to_remove"))

    @girding.destroy


    redirect_to("/girdings", :notice => "Girding deleted successfully.")

  end
end
