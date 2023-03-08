class ChapitresController < ApplicationController


  def index
    @chapitres = Chapitre.all
  end

  def show
    @chapitre = Chapitre.find(params[:id])
  end

  def new
    @chapitre = Chapitre.new
  end

  def create
    @chapitre = Chapitre.new(chapitre_params)
    @chapitre.save
  end

  def edit
    @chapitre = Chapitre.find(params[:id])
  end

  def update
    @chapitre = Chapitre.find(params[:id])
    @chapitre.update
    @chapitre.save
  end

  def destroy
    @chapitre = Chapitre.find(params[:id])
    @chapitre.delete
  end

  private

  def chapitre_params
    params.require(:chapitre).permit(:title, :content, :choice, :consequence, :user_id)
  end
end
