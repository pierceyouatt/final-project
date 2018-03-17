class WieldingsController < ApplicationController
  def index
    @wieldings = Wielding.all

    render("wielding_templates/index.html.erb")
  end

  def show
    @wielding = Wielding.find(params.fetch("id_to_display"))

    render("wielding_templates/show.html.erb")
  end

  def new_form
    render("wielding_templates/new_form.html.erb")
  end

  def create_row
    @wielding = Wielding.new


    @wielding.weapon_id = params.fetch("weapon_id")

    @wielding.pc_id = params.fetch("pc_id")



    if @wielding.valid?
      @wielding.save

      redirect_to("/wieldings/#{@wielding.id}")
    else
      render("wielding_templates/new_form.html.erb")
    end

  end

  def edit_form
    @wielding = Wielding.find(params.fetch("prefill_with_id"))

    render("wielding_templates/edit_form.html.erb")
  end

  def update_row
    @wielding = Wielding.find(params.fetch("id_to_modify"))


    @wielding.weapon_id = params.fetch("weapon_id")

    @wielding.pc_id = params.fetch("pc_id")



    if @wielding.valid?
      @wielding.save

      redirect_to("/wieldings/#{@wielding.id}", :notice => "Wielding updated successfully.")
    else
      render("wielding_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @wielding = Wielding.find(params.fetch("id_to_remove"))

    @wielding.destroy


    redirect_to("/pcs/#{@wielding.pc_id}")

  end
end
