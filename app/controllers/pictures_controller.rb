class PicturesController < ApplicationController

  def index
    @most_recent_pictures = Picture.most_recent_five
    @pictures = Picture.all
    @month_old_pictures = Picture.where("created_at <= ?", 1.month.ago)
    @one_year_old = Picture.pictures_created_in_year(2016)
    @this_year = Picture.pictures_created_in_year(2017)
  end

  def show
   @picture = Picture.find(params[:id])

 end

 def new
     @picture = Picture.new
   end

   def create
     @picture = Picture.new(picture_params)
     if @picture.save
       # if the picture gets saved, generate a get request to "/pictures" (the index)
       redirect_to "/pictures"
     else
       # otherwise render new.html.erb
       render :new
     end
   end

   def picture_params
     params.require(:picture).permit(:title, :artist, :url)
    #  { title: params[:picture][:title], artist: params[:picture][:artist], url: params[:picture][:url] }
   end

   def edit
       @picture = Picture.find(params[:id])
     end

     def update
       @picture = Picture.find(params[:id])

       # use the same picture_params method that we used in create
       if @picture.update_attributes(picture_params)
         redirect_to "/pictures/#{@picture.id}"
       else
         render :edit
       end
     end

    def destroy
      @picture = Picture.find(params[:id])
      @picture.destroy
      redirect_to "/pictures"
  end

  def show_year
    @pictures = Picture.all
    end


 end
