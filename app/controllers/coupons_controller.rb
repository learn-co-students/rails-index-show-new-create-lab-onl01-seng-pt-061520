class CouponsController < ActiveRecord::Base
 def create 
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redierct_to coupon_path(@coupon)
 end
 
 def index 
   @coupon = Coupon.all
 end

 def show
   @coupon = Coupon.find(params[:id])
 end

 

 
end
