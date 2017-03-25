class ImagesController < ApplicationController




  def new
  end





  def create
    category_id = params[:product]['category_id']
    @image = Image.create(
      url: params[:url],
      category_id: category_id
      )
    flash[:success] = "Image Created"
    redirect_to "/products/#{category_id}"
  end



  





    def destroy 


    end 

end
