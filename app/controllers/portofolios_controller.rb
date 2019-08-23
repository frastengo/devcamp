class PortofoliosController < ApplicationController
  before_action :set_portofolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portofolio'

  access all: [:show, :index, :angular], user: {except: [:sort, :destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    # @portofolio_items = Portofolio.order("position ASC")
    @portofolio_items = Portofolio.by_position
  end

  def sort 
    params[:order].each do |key, value|
      Portofolio.find(value[:id]).update(position: value[:position])
    end

    render nothing: true
  end 

  def angular
    @angular_portofolio_items = Portofolio.angular
  end

  def new
    @portofolio_item = Portofolio.new
    # 3 versions of portofolio item with technologies, create three types of the technologies and make it available for the form
    3.times { @portofolio_item.technologies.build }
  end

  def create
    @portofolio_item = Portofolio.new(portofolio_params)

    respond_to do |format|
      if @portofolio_item.save
        format.html{ redirect_to portofolios_path, notice: "Your portofolio item is now live." }
      else
        format.html { render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portofolio_item.update(portofolio_params)
        format.html { redirect_to portofolios_path, notice: "The record successfully updated"}
      else
        format.html { render :edit}
      end
    end
  end

  def show

  end

  def destroy
    #this is going to perform the look up

    #this is going to delete the record
    @portofolio_item.destroy

    #redirect!
    respond_to do |format|
      format.html { redirect_to portofolios_url, notice: "Portfolio was removed."}
    end

  end

  private

  def portofolio_params
    params.require(:portofolio).permit(:title,
                                       :subtitle,
                                       :body,
                                       :main_image,
                                       :thumb_image,
                                       technologies_attributes: [:name]
                                       
                                      )
  end

  def set_portofolio_item
    @portofolio_item = Portofolio.find(params[:id])
  end
end
