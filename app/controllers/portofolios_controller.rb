class PortofoliosController < ApplicationController
  def index
    @portofolio_items = Portofolio.all
  end

  def new
    @portofolio_item = Portofolio.new
  end

  def create
    @portofolio_item = Portofolio.new(params.require(:portofolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portofolio_item.save
        format.html{ redirect_to portofolios_path, notice: "Your portofolio item is now live." }
      else
        format.html { render :new}
      end
    end
  end

  def edit
    @portofolio_item = Portofolio.find(params[:id])
  end

  def update
    @portofolio_item = Portofolio.find(params[:id])
    respond_to do |format|
      if @portofolio_item.update(params.require(:portofolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portofolios_path, notice: "The record successfully updated"}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @portofolio_item = Portofolio.find(params[:id])
  end

end
