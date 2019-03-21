class PositionsController < ApplicationController
  def index
    @positions = Position.page(params[:page]).per(10)

    render("position_templates/index.html.erb")
  end

  def show
    @forward = Forward.new
    @midfielder = Midfielder.new
    @defender = Defender.new
    @goalkeeper = Goalkeeper.new
    @player = Player.new
    @position = Position.find(params.fetch("id_to_display"))

    render("position_templates/show.html.erb")
  end

  def new_form
    @position = Position.new

    render("position_templates/new_form.html.erb")
  end

  def create_row
    @position = Position.new


    if @position.valid?
      @position.save

      redirect_back(:fallback_location => "/positions", :notice => "Position created successfully.")
    else
      render("position_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @position = Position.find(params.fetch("prefill_with_id"))

    render("position_templates/edit_form.html.erb")
  end

  def update_row
    @position = Position.find(params.fetch("id_to_modify"))


    if @position.valid?
      @position.save

      redirect_to("/positions/#{@position.id}", :notice => "Position updated successfully.")
    else
      render("position_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @position = Position.find(params.fetch("id_to_remove"))

    @position.destroy

    redirect_to("/positions", :notice => "Position deleted successfully.")
  end
end
