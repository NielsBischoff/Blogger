class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
	  	@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
	    @article = Article.new
	    @article.title = params[:article][:title]
	    @article.save

	    flash.notice = "Awesome! Article '#{@article.title}' has been created :)"

	    redirect_to article_path(@article)
  	end

  	def destroy
  		@article = Article.find(params[:id])
  		@article.delete 

  		flash.notice = "Article '#{@article.title}' has been deleted :("

  		redirect_to articles_path
  	end	

  	def edit
  		@article = Article.find(params[:id])
	end

	def update
  		@article = Article.find(params[:id])
  		@article.update(article_params)

  		flash.notice = "High five! Article '#{@article.title}'has been updated!"
  			
  		redirect_to article_path(@article)
	end

	

	def show 
  		@article = Article.find(params[:id]) 
 	 	@comment = @article.comments.build
	end 
		


end

