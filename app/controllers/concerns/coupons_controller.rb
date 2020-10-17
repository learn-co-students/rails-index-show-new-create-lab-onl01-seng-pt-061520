class CouponsController < ActiveRecord::Base
 def create 
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redierct_to coupon_path(@coupon)


end
