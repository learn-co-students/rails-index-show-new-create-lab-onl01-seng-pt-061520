class CouponsController < ApplicationController
  before_action :find_coupon, only: [:show, :edit, :update, :destroy]

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new(coupon_params)
    if @coupon.save
      redirect_to coupon_path(@coupon)
    else
      render :new
    end
  end

  def update
    if @coupon.update(coupon_params)
      redirect_to coupon_path(@coupon)
    else
      render :edit
    end
  end

  def destroy
    @coupon.destroy
    redirect_to coupons_path
  end

  private

  def find_coupon
    @coupon = Coupon.find_by(id: params[:id])
    redirect_to coupons_path if !@coupon
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
