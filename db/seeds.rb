# User.create!([
#   {email: "allenwalker@mailinator.com", encrypted_password: "$2a$10$JjrvLGLAw/lf7rjuDH.3a.HW3iURQscpjBeB14/pk6GXoZicqXZi.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-26 00:50:38", last_sign_in_at: "2015-11-26 00:50:38", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
# ])
Figurine.create!([
  {name: "Morning Rabbit", price: "25.99", description: "A wooden rabbit figurine with a blue pajama top.", in_stock: nil, supplier_id: 1},
  {name: "Heimlich Elephants", price: "45.99", description: "One of these fellows is choking. Uh-oh!", in_stock: nil, supplier_id: 2},
  {name: "Stupid Duck", price: "13.42", description: "Well it's a wooden duck. He's not the smartest duck in the pond!", in_stock: nil, supplier_id: 1},
  {name: "Inquisitive Owl", price: "51.94", description: "It's an owl. He's judging you!!", in_stock: nil, supplier_id: 1},
  {name: "Shoddy Hobo Figurine", price: "1.99", description: "It's a hobo figurine. Kinda shoddy. He's keeping his spirits up though!", in_stock: nil, supplier_id: 2}
])
Image.create!([
  {url: "http://www.crusadergifts.co.uk/uploads/images_products_lightbox/12371_i1_large-peter-rabbit-figurine.jpg", figurine_id: 1},
  {url: "http://i.ebayimg.com/00/s/NTAwWDM3NQ==/z/gAIAAOxyOMdS-o63/$_35.JPG?set_id=2", figurine_id: 2},
  {url: "http://www.rustichome.com/images/animal-figurine-duck-2.jpg", figurine_id: 3},
  {url: "http://athenianowlcoins.reidgold.com/Owl_figurine.jpg", figurine_id: 4},
  {url: "http://consumergrouch.com/wp-content/uploads/2013/08/Clown-Figurine.jpg", figurine_id: 5},
  {url: "https://s-media-cache-ak0.pinimg.com/236x/b2/c0/6c/b2c06c1bbbd65ed8ce64db483c6cc90f.jpg", figurine_id: 3},
  {url: "http://thumbs4.ebaystatic.com/d/l225/m/mgB5tFGTn-NxSygx0O_FdHw.jpg", figurine_id: 5},
  {url: "http://ecx.images-amazon.com/images/I/51MXbcdTltL._SY300_.jpg", figurine_id: 1}
])
Order.create!([
  {user_id: nil, figurine_id: 1, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 3, quantity: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 5, quantity: 7, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, figurine_id: 4, quantity: 37, subtotal: "1921.78", tax: "172.96", total: "332391.45"},
  {user_id: 1, figurine_id: 2, quantity: 300, subtotal: "13797.0", tax: "1241.73", total: "17132148.81"},
  {user_id: 1, figurine_id: 2, quantity: 1, subtotal: "45.99", tax: "4.14", total: "51.25"},
  {user_id: 1, figurine_id: 2, quantity: 1, subtotal: "45.99", tax: "4.14", total: "51.25"},
  {user_id: 1, figurine_id: 2, quantity: 1, subtotal: "45.99", tax: "4.14", total: "51.25"},
  {user_id: 1, figurine_id: 2, quantity: 1, subtotal: "45.99", tax: "4.14", total: "51.25"},
  {user_id: 1, figurine_id: 2, quantity: 1, subtotal: "45.99", tax: "4.14", total: "51.25"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: 1, figurine_id: 1, quantity: 1, subtotal: "25.99", tax: "2.34", total: "29.26"},
  {user_id: nil, figurine_id: 1, quantity: 1, subtotal: nil, tax: nil, total: nil}
])
Supplier.create!([
  {name: "Arnold's Figurine Emporium", phone: "312-476-5390", email: "arny@afigemporium.com", shipping_cost: "0.93", website: "afigemporium.com/supplier"},
  {name: "Figuro's Figurine Festival", phone: "816-465-2540", email: "figgyfigs@figgyfigsbigfigfestival.com", shipping_cost: "1.12", website: "figgyfigsbigfigfestival.com/figs"}
])
