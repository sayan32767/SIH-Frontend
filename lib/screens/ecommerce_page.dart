import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return ProductGrid();
  }
}

class Product {
  final String image;
  final String name;
  final String price;
  final String oldPrice;
  final bool isOnSale;

  Product({
    required this.image,
    required this.name,
    required this.price,
    this.oldPrice = '',
    this.isOnSale = false,
  });
}

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product(image: 'assets/images/cure1.jpg', name: 'Solution 1', price: 'Rs 14.99', oldPrice: '30.00', isOnSale: true),
    Product(image: 'assets/images/cure1.jpg', name: 'Solution 2', price: 'Rs 20.00'),
    Product(image: 'assets/images/cure1.jpg', name: 'Solution 3', price: 'Rs 12.00'),
    Product(image: 'assets/images/cure1.jpg', name: 'Solution 4', price: 'Rs 9.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular Products",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.green, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                  height: 150,
                  width: double.infinity,
                ),
              ),
              if (product.isOnSale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Text(
                      'Sale 50%',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
             
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      product.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                    if (product.oldPrice.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          product.oldPrice,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                  ],
                ),
                
              ],
            ),
          ),
          Align(child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.shopping_basket),
          ), alignment: Alignment.topRight,)
        ],
      ),
    );
  }
}
