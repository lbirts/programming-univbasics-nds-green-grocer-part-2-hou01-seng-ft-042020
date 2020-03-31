require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
   item_index = 0
  while cart[item_index] do
    item = cart[item_index]
    coupon_item = find_item_by_name_in_collection(item[:item], coupons)
    if coupon_item
      item[:count] -= coupon_item[:num]
      cart << {
        :item => "#{coupon_item[:item]} W/COUPON",
        :price => (coupon_item[:cost] / coupon_item[:num]),
        :clearance => item[:clearance],
        :count => coupon_item[:num]
      }
    end
    item_index += 1
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
