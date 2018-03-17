class ArmorsController < ApplicationController
  before_action :authenticate_user!
  def index
    @armors = Armor.all

    render("armor_templates/index.html.erb")
  end

  def show
    @armor = Armor.find(params.fetch("id_to_display"))

    render("armor_templates/show.html.erb")
  end

  def new_form
    render("armor_templates/new_form.html.erb")
  end

  def create_row
    @armor = Armor.new


    @armor.name = params.fetch("name")

    @armor.armortype = params.fetch("armortype")

    @armor.armorac = params.fetch("armorac")

    @armor.armorstr = params.fetch("armorstr")



    if @armor.valid?
      @armor.save

      redirect_to("/armors", :notice => "Armor created successfully.")
    else
      render("armor_templates/new_form.html.erb")
    end

  end

  def edit_form
    @armor = Armor.find(params.fetch("prefill_with_id"))

    render("armor_templates/edit_form.html.erb")
  end

  def update_row
    @armor = Armor.find(params.fetch("id_to_modify"))


    @armor.name = params.fetch("name")

    @armor.armortype = params.fetch("armortype")

    @armor.armorac = params.fetch("armorac")

    @armor.armorstr = params.fetch("armorstr")



    if @armor.valid?
      @armor.save

      redirect_to("/armors/#{@armor.id}", :notice => "Armor updated successfully.")
    else
      render("armor_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @armor = Armor.find(params.fetch("id_to_remove"))

    @armor.destroy


    redirect_to("/armors", :notice => "Armor deleted successfully.")

  end
end
