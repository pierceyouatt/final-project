class PcsController < ApplicationController
  def index
    @pcs = Pc.all

    render("pc_templates/index.html.erb")
  end

  def show
    @pc = Pc.find(params.fetch("id_to_display"))
    @wieldings = Wielding.where(pc_id: @pc.id)
    
    render("pc_templates/show.html.erb")
  end

  def new_form
    render("pc_templates/new_form.html.erb")
  end

  def create_row
    @pc = Pc.new

    @pc.name = params.fetch("name")

    @pc.user_id = current_user.id

    @pc.str = params.fetch("str")

    @pc.strmod = @pc.str/2-5

    @pc.dex = params.fetch("dex")

    @pc.dexmod = @pc.dex/2-5

    @pc.con = params.fetch("con")

    @pc.int = params.fetch("int")

    @pc.wis = params.fetch("wis")

    @pc.cha = params.fetch("cha")

    @pc.ac = params.fetch("ac")


    if @pc.valid?
      @pc.save

      redirect_to("/pcs/#{@pc.id}", :notice => "Pc created successfully.")
    else
      render("pc_templates/new_form.html.erb")
    end

  end

  def edit_form
    @pc = Pc.find(params.fetch("prefill_with_id"))

    render("pc_templates/edit_form.html.erb")
  end

  def update_row
    @pc = Pc.find(params.fetch("id_to_modify"))

    @pc.name = params.fetch("name")

    @pc.user_id = current_user.id

    @pc.str = params.fetch("str")

    @pc.strmod = @pc.str/2-5

    @pc.dex = params.fetch("dex")

    @pc.dexmod = @pc.dex/2-5

    @pc.con = params.fetch("con")

    @pc.int = params.fetch("int")

    @pc.wis = params.fetch("wis")

    @pc.cha = params.fetch("cha")

    @pc.ac = params.fetch("ac")

    if @pc.valid?
      @pc.save

      redirect_to("/pcs/#{@pc.id}", :notice => "Pc updated successfully.")
    else
      render("pc_templates/edit_form.html.erb")
    end

  end

  def destroy_row
    @pc = Pc.find(params.fetch("id_to_remove"))

    @pc.destroy


    redirect_to("/pcs", :notice => "Pc deleted successfully.")

  end
end
