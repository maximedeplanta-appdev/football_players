class ForwardsController < ApplicationController
  def index
    @forwards = Forward.all

    render("forward_templates/index.html.erb")
  end

  def show
    @forward = Forward.find(params.fetch("id_to_display"))

    render("forward_templates/show.html.erb")
  end

  def new_form
    @forward = Forward.new

    render("forward_templates/new_form.html.erb")
  end

  def create_row
    @forward = Forward.new

    @forward.position_id = params.fetch("position_id")

    if @forward.valid?
      @forward.save

      redirect_back(:fallback_location => "/forwards", :notice => "Forward created successfully.")
    else
      render("forward_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @forward = Forward.find(params.fetch("prefill_with_id"))

    render("forward_templates/edit_form.html.erb")
  end

  def update_row
    @forward = Forward.find(params.fetch("id_to_modify"))

    @forward.position_id = params.fetch("position_id")

    if @forward.valid?
      @forward.save

      redirect_to("/forwards/#{@forward.id}", :notice => "Forward updated successfully.")
    else
      render("forward_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_forward
    @forward = Forward.find(params.fetch("id_to_remove"))

    @forward.destroy

    redirect_to("/positions/#{@forward.position_id}", notice: "Forward deleted successfully.")
  end

  def destroy_row
    @forward = Forward.find(params.fetch("id_to_remove"))

    @forward.destroy

    redirect_to("/forwards", :notice => "Forward deleted successfully.")
  end
end
