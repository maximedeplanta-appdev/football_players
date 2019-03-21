class GoalkeepersController < ApplicationController
  def index
    @goalkeepers = Goalkeeper.page(params[:page]).per(10)

    render("goalkeeper_templates/index.html.erb")
  end

  def show
    @goalkeeper = Goalkeeper.find(params.fetch("id_to_display"))

    render("goalkeeper_templates/show.html.erb")
  end

  def new_form
    @goalkeeper = Goalkeeper.new

    render("goalkeeper_templates/new_form.html.erb")
  end

  def create_row
    @goalkeeper = Goalkeeper.new

    @goalkeeper.position_id = params.fetch("position_id")

    if @goalkeeper.valid?
      @goalkeeper.save

      redirect_back(:fallback_location => "/goalkeepers", :notice => "Goalkeeper created successfully.")
    else
      render("goalkeeper_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_position
    @goalkeeper = Goalkeeper.new

    @goalkeeper.position_id = params.fetch("position_id")

    if @goalkeeper.valid?
      @goalkeeper.save

      redirect_to("/positions/#{@goalkeeper.position_id}", notice: "Goalkeeper created successfully.")
    else
      render("goalkeeper_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @goalkeeper = Goalkeeper.find(params.fetch("prefill_with_id"))

    render("goalkeeper_templates/edit_form.html.erb")
  end

  def update_row
    @goalkeeper = Goalkeeper.find(params.fetch("id_to_modify"))

    @goalkeeper.position_id = params.fetch("position_id")

    if @goalkeeper.valid?
      @goalkeeper.save

      redirect_to("/goalkeepers/#{@goalkeeper.id}", :notice => "Goalkeeper updated successfully.")
    else
      render("goalkeeper_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_position
    @goalkeeper = Goalkeeper.find(params.fetch("id_to_remove"))

    @goalkeeper.destroy

    redirect_to("/positions/#{@goalkeeper.position_id}", notice: "Goalkeeper deleted successfully.")
  end

  def destroy_row
    @goalkeeper = Goalkeeper.find(params.fetch("id_to_remove"))

    @goalkeeper.destroy

    redirect_to("/goalkeepers", :notice => "Goalkeeper deleted successfully.")
  end
end
