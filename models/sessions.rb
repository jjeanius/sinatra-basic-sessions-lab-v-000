
def item_new
  @item = current_user.items.create
  session[:item] = @order.to_params
end

def add_to_cart
  @item = current_user.items.find(session[:order])
  @item << Product.find(params[:id])
end
