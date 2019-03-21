class MidfieldersController < ApplicationController
  def index
    @midfielders = Midfielder.all

    render("midfielder_templates/index.html.erb")
  end

  def show
    @midfielder = Midfielder.find(params.fetch("id_to_display"))

    render("midfielder_templates/show.html.erb")
  end

  def new_form
    @midfielder = Midfielder.new

    render("midfielder_templates/new_form.html.erb")
  end

  def create_row
    @midfielder = Midfielder.new

    @midfielder.position_id = params.fetch("position_id")

    if @midfielder.valid?
      @midfielder.save

      redirect_back(:fallback_location => "/midfielders", :notice => "Midfielder created successfully.")
    else
      render("midfielder_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @midfielder = Midfielder.find(params.fetch("prefill_with_id"))

    render("midfielder_templates/edit_form.html.erb")
  end

  def update_row
    @midfielder = Midfielder.find(params.fetch("id_to_modify"))

    @midfielder.position_id = params.fetch("position_id")

    if @midfielder.valid?
      @midfielder.save

      redirect_to("/midfielders/#{@midfielder.id}", :notice => "Midfielder updated successfully.")
    else
      render("midfielder_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @midfielder = Midfielder.find(params.fetch("id_to_remove"))

    @midfielder.destroy

    redirect_to("/midfielders", :notice => "Midfielder deleted successfully.")
  end
end
