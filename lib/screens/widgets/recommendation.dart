import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RecommendationPage extends StatefulWidget {
  @override
  _RecommendationPageState createState() => _RecommendationPageState();
}

class _RecommendationPageState extends State<RecommendationPage> {
  bool _isLoading = true;
  List<Product> _recommendations = [];
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchRecommendations();
  }

  Future<void> _fetchRecommendations() async {
    try {
      final response = await http.get(Uri.parse('YOUR_API_ENDPOINT'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _recommendations =
              List<Product>.from(data.map((item) => Product.fromJson(item)));
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to load recommendations';
        });
      }
    } catch (error) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Error: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Products'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : ListView.builder(
                  itemCount: _recommendations.length,
                  itemBuilder: (context, index) {
                    final product = _recommendations[index];
                    return RecommendationCard(product: product);
                  },
                ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  final Product product;

  const RecommendationCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          product.imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(product.name),
        subtitle: Text(product.description),
        trailing: Text('\$${product.price.toStringAsFixed(2)}'),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(product: product),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'].toDouble(),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              product.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              product.description,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
