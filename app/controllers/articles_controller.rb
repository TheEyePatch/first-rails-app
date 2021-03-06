class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(create_params)
        
        if @article.valid?
            @article.save
            redirect_to articles_path
        else
            redirect_to new_article_path, notice: @article.errors.full_messages
        end
    end
    def show
        @article = Article.find(params[:id])
    end
    def edit
        @article = Article.find(params[:id])
    end
    def update
        @article = Article.find(params[:id])
        if  @article.update(create_params)
            redirect_to articles_path
        else
            redirect_to edit_article_path, notice: @article.errors.full_messages
        end
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    private
    def create_params
        params.require(:article).permit(:name, :body)
    end
end
