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
    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy    
            redirect_to blogs_path
        end
    end
    def edit
        @blog = Blog.find(params[:id])
    end
    def update
        @blog = Blog.find(params[:id])
        @blog.update(blog_params)
    end
private 
    def blog_params
        params.require(:blog).permit(:title, :content)
    end

end
