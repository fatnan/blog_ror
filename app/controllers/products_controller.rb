class ProductsController < ApplicationController
    def index
        @products = Product.all
        abort @products.inspect
        render plain: @products.inspect
    end

    def show
        @product = Product.find(params["id"])
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def destroy
        @product = Product.find(params["id"])
        @product.destroy

        redirect_to products_path
    end

    def create
        # render plain: params[:product].inspect
        @product = Product.new(product_params)

        if @product.save
            redirect_to products_path
        else
            render 'new'
        end
    end

    private
        def product_params
            params.require(:product).permit(:name,:category,:value)
        end

end
