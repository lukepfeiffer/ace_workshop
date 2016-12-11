class WorkshopsController < ApplicationController

  before_action :check_user, only: [:new, :create, :edit, :update, :pending, :archived]

  expose :workshop
  expose :pending_workshops do
    Workshop.pending
  end
  expose :published_workshops do
    Workshop.published
  end
  expose :archived_workshops do
    Workshop.archived
  end

  def new
  end

  def index
    @archived_link = true
  end

  def pending
    @archived_link = true
  end

  def archived
  end

  def create
    if workshop.save
      redirect_to workshops_path
    else
      render :new
    end
  end

  def update
    if workshop.update(workshop_params)
      redirect_to workshops_path
    else
      render :new
    end
  end

  def destroy
    workshop.update(publish_date: nil)
    redirect_to :root
  end

  private

  def workshop_params
    params.require(:workshop).permit(
      :publisher,
      :publish_date,
      :title,
      :show_notes,
      :powerpoint_link,
      :embed_url
    )
  end

  def check_user
    if current_user.nil?
      redirect_to :root
    end
  end
end
