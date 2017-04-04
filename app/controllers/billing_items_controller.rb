class BillingItemsController < ApplicationController
  before_action :set_billing_item, only: [:show, :update, :destroy]

  # GET /billing_items
  def index
    @billing_items = BillingItem.all

    render json: @billing_items , include: ['author']
  end

  # GET /billing_items/1
  def show
    render json: @billing_item , include: ['author']
  end

  # POST /billing_items
  def create
    @billing_item = BillingItem.new(billing_item_params)

    if @billing_item.save
      render json: @billing_item, status: :created, location: @billing_item
    else
      render json: @billing_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /billing_items/1
  def update
    if @billing_item.update(billing_item_params)
      render json: @billing_item
    else
      render json: @billing_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /billing_items/1
  def destroy
    @billing_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_item
      @billing_item = BillingItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # Todo einhalten
    def billing_item_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
