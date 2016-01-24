# Value-added tax.
TAX = 0.16

# The price of the front suspension.
FRONT_SUSPENSION_PRICE = 30

# The price of the rear suspension.
REAR_SUSPENSION_PRICE = 60

# Function that computes the price of a mountain bike taking into account
# its base price, the value-added tax, and if it has front/rear suspensions.
#
# Returns:: The full price of the mountain bike.
#
# Parameters::
#
#   base_price:: The base price of the mountain bike.
#
#   type_code:: The code of the type of mountain bike. Must be one of the
#               following symbols: +:rigid+, +:front_suspension+, or
#               +:full_suspension+.

def mountain_bike_price(base_price, type_code)
  if type_code == :rigid
    (1 + TAX) * base_price
  elsif type_code == :front_suspension
    (1 + TAX) * base_price + FRONT_SUSPENSION_PRICE
  elsif type_code == :full_suspension
    (1 + TAX) * base_price + FRONT_SUSPENSION_PRICE + REAR_SUSPENSION_PRICE
  end
end
