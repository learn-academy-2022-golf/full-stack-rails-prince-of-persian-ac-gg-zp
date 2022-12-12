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
        @blog = Blog.create (blog_params)
        if @blog.valid?
            redirect_to blogs_path
        else 
            # respond_to do |format|
            #     format.html{render :text @blog.html_content}
            # end 
            redirect_to new_blog_path 
            @error = @blog.errors.full_messages
        end
    end
private 
    def blog_params
        params.require(:blog).permit(:title, :content)
    end

end
