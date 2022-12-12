class BlogController < ApplicationController

    def index 
        @blogs = Blog.all
    end
    def show
        @blog = Blog.find(params[:id])
    end
    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.new(blog_params)
       
        respond_to do |format|
          if @blog.save
           format.html {redirect_to blogs_path}
          else
            format.html { render :new, status: :unprocessable_entity }
             
          end
        end
      end
private 
    def blog_params
        params.require(:blog).permit(:title, :content)
    end

end
