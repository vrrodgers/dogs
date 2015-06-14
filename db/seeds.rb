User.create!([
  {email: "123@yahoo.com", encrypted_password: "$2a$10$1YIjEX319WXfZHWzhuD5Iu9RHTlnSDM7/5vj.31sCFPdST2iNrc.W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-06-12 01:05:08", last_sign_in_at: "2015-06-12 01:05:08", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Dog.create!([
  {name: "bone", price: "3.99", description: "red bone", inventory: 10, supplier_id: 1},
  {name: "clothes", price: "10.99", description: "Flamingo Tank Dog Dress by Doggie Design featuring tropical feel with lightweight Flamingo printed design tank and the matching embroidery flamingo on the top. Great matching during summer time as the materials provide extra comfortable and and cool during summer days. Superb cute and sweet. Let's melt the whole male doggie's heart whenever your doggie walking down the street with this cute pink dog dress.", inventory: 23, supplier_id: 2},
  {name: "Treats", price: "4.99", description: "When your dog wants to savor a tasty chew treat, give him Busy Rollhide. This chew treat is bursting with flavor and offers up a tasty middle that will reward his chewing prowess. It's the fun and tasty chew your dog will love. Get Busy!", inventory: 7, supplier_id: 2},
  {name: "Toys", price: "7.99", description: "The 15 inch, Telebrands Crazy Critters Duck is the best stuffing-free dog toy! He'll toss, chew, hide then seek the toy. No mess means less stress for you. Let him have some fun today with these ", inventory: 17, supplier_id: 1},
  {name: "Red Jacket ", price: "16.99", description: "Winter can be cold try our warm puffy jacket ", inventory: 5, supplier_id: 1},
  {name: "Too Cute  Shirt", price: "7.99", description: "Try our too cute shirt. ", inventory: 15, supplier_id: 2},
  {name: "Zebra stuff animal", price: "8.99", description: "This soft plush zebra is perfect for your fuzzy friend", inventory: 65, supplier_id: 2}
])
Image.create!([
  {image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0CAMQjRxqFQoTCOSv77_jg8YCFYpUkgodol8A0Q&url=http%3A%2F%2Fgivetreatlove.com%2Fcollections%2Fall&ei=Vnh3VeSsNoqpyQSiv4GIDQ&bvm=bv.95039771,d.aWw&psig=AFQjCNHzAUTsLej5snp-v", dog_id: 1},
  {image_url: "http://petus.imageg.net/PETNA_36/pimg/pPETNA-5233003_main_enh.jpg\n", dog_id: 2}
])
Order.create!([
  {user_id: nil, product_id: nil, quantity: nil, subtotal: nil, tax: nil, total: nil},
  {user_id: nil, product_id: nil, quantity: nil, subtotal: nil, tax: nil, total: nil}
])
Supplier.create!([
  {Phone: "222-333-4444", name: "mean mug dogs", email: "info@meanmugdogs.com"},
  {Phone: "333-555-9999", name: "real bones", email: "info@realbones.com"}
])
