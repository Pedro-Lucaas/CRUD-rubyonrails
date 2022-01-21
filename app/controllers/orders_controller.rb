class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!

  # GET /orders or /orders.json
  def index
    @orders = Order.all
    @order = Order.new
    @order.order_products.build
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.order_products.build
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create

    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path, notice: "Pedido Inserido com sucesso." }
        format.json { render :show, status: :created, location: @order }
      else
        @orders = Order.all
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: "Pedido atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Pedido Removido com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:address_id, :client_id, :order_products_attributes => [:product_id, :quantity])
    end
end
