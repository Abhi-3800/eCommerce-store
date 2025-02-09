class ProductsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        redirect_to @product, notice: "Product was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        redirect_to @product, notice: "Product was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @product.destroy!

    respond_to do |format|
      redirect_to products_path, status: :see_other, notice: "Product was successfully destroyed."
    end
  end

  private
    def set_product
      @product = Product.find(params.expect(:id))
    end

    def product_params
      params.expect(product: [ :name, :description, :price, images: [] ])
    end
end
