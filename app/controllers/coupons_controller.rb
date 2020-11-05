class CouponsController < ApplicationController
    before_action :find_coupon, only: :show

    def index
      @coupons = Coupon.all
    end
  
    def new
      @coupon = Coupon.new
    end
  
    def create
      @coupon = Coupon.create(coupon_params)
      redirect_to coupon_path(@coupon)
    end
  
    def show
    end
  
    # def edit
    # end
  
    # def update
    #   @treat.update(treat_params)
    #   redirect_to treat_path(@treat)
    # end
  
    # def destroy
    #   @treat.destroy
    #   redirect_to treats_path
    # end
  
    private
  
    def find_coupon
      @coupon = Coupon.find_by_id(params[:id])
      redirect_to coupons_path if !@coupon
    end
  
    def coupon_params
      params.require(:coupon).permit(:coupon, :coupon_code, :store)
    end
end
