class CouponsController < ApplicationController
 def create 
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
 end
 
 def index 
   @coupon = Coupon.all
 end

 def show
   @coupon = Coupon.find(params[:id])
 end

 def new
   
 end




 
end
