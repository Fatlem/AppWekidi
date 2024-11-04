import 'package:flutter/material.dart';
import 'package:restofatlem_14624/product.dart';
import 'package:restofatlem_14624/product_description.dart';
import 'package:restofatlem_14624/cart.dart'; // Ensure to import CartPage

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<Map<String, dynamic>> cartItems = [];
  final List<Product> products = [
    Product(
      name: 'Barbarian Burger',
      description: 'Spicy Burger With Onion Ring And Blaster Beef.',
      price: 60000,
      imageUrl: 'assets/images/BarbarianBurger4.png',
    ),
    Product(
      name: 'Chibi Burger',
      description: 'Delicious burger with unique flavors.',
      price: 25000,
      imageUrl: 'assets/images/ChibiBurger2.png',
    ),
    Product(
      name: 'Melted Burger',
      description: 'Melted cheese and savory beef.',
      price: 40000,
      imageUrl: 'assets/images/MeltedBurger3.png',
    ),
    Product(
      name: 'Melted LOL Burger',
      description: 'A fun twist on the classic burger.',
      price: 40000,
      imageUrl: 'assets/images/MeltedLOLBurger1.png',
    ),
  ];

  List<int> quantities = List.filled(4, 0); // Initialize the quantities list with the same length as products

  void addToCart(Product product, int quantity) {
    for (var item in cartItems) {
      if (item['product'] == product) {
        item['quantity'] += quantity;
        return;
      }
    }
    cartItems.add({'product': product, 'quantity': quantity});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk', style: TextStyle(fontFamily: 'DynaPuff')),
        backgroundColor: Color(0xFF8D6E63), // Burger-themed color
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0), // Adjusted padding for better spacing
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return GestureDetector( // Wrap the Card with GestureDetector
            onTap: () {
              // Navigate to product description page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDescription(product: product),
                ),
              );
            },
            child: Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              child: Container(
                height: 160, // Set a fixed height for the card
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
                  children: [
                    // Full-size product image
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          product.imageUrl,
                          fit: BoxFit.cover, // Ensures the image covers the space without overflow
                        ),
                      ),
                    ),
                    // Product details
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute space evenly
                          children: [
                            Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DynaPuff', // Use custom font
                              ),
                            ),
                            Text(
                              product.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.brown[600],
                                fontFamily: 'DynaPuff', // Use custom font
                              ),
                            ),
                            Text(
                              'Rp ${product.price}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.green[700],
                                fontFamily: 'DynaPuff', // Use custom font
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start, // Align buttons to the start
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (quantities[index] > 0) quantities[index]--;
                                    });
                                  },
                                ),
                                Text(quantities[index].toString(),
                                    style: TextStyle(fontFamily: 'DynaPuff')),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      quantities[index]++;
                                    });
                                  },
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (quantities[index] > 0) {
                                  addToCart(product, quantities[index]);
                                  setState(() {
                                    quantities[index] = 0; // Reset quantity after adding to cart
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Ditambahkan ke keranjang')),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF8D6E63), // Burger-themed color
                                foregroundColor: Colors.white,
                              ),
                              child: Text(
                                'Tambahkan ke Keranjang',
                                style: TextStyle(fontFamily: 'DynaPuff'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF8D6E63), // Burger-themed color
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Cart(cartItems: cartItems),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart, color: Colors.white),
              SizedBox(width: 8.0),
              Text(
                'Keranjang',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DynaPuff', // Use custom font
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFCC80), // Matching burger-inspired background
    );
  }
}
