class CouponsController < ApplicationController

    def index
      @coupons = Coupon.all
    end

    def show
      @coupon = Coupon.find(params[:id])
    end 

    def new
    end 

    def create
      @coupon = Coupon.new
      @coupon.coupon_code = params[:coupon][:coupon_code]
      @coupon.store = params[:coupon][:store]
      @coupon.save
      redirect_to coupon_path(@coupon)
      # @coupon = Coupon.create( {
      #   coupon_code: params[:coupon_code],
      #   store: params[:store]
      # })
      # redirect_to coupon_path(@coupon)
    end 


  end