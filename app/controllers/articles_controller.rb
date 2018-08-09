class ArticlesController < ApplicationController
  #todos los elementos de la tabla
  def index
    @article= Article.all
  end

  def new
    @article = Article.new
  end
  #insertar registros
  def create
    @article = Article.new(nombre: params[:article][:nombre],direccion: params[:article][:direccion],telefono: params[:article][:telefono],categoria: params[:article][:categoria],descripcion: params[:article][:descripcion],mapa: params[:article][:mapa])
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end
  #ver registros segun id
  def show 
    @article=Article.find(params[:id])
  end  
  
  #editar registros segun id
  def edit 
    @article=Article.find(params[:id])
  end 

  def update
    @article=Article.find(params[:id])
    if @article.update(nombre: params[:article][:nombre],direccion: params[:article][:direccion],telefono: params[:article][:telefono],categoria: params[:article][:categoria],descripcion: params[:article][:descripcion],mapa: params[:article][:mapa])
      redirect_to articles_path
    else
      render :edit
    end

  end
  #eliminar registros segun id
  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

end
