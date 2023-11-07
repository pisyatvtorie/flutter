import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wb/productDetails.dart';


void main() {
  runApp(MyApp());
}

final List<String> ImageContent = [
  'https://images.biggeek.ru/1/435/e97a/22698-93t_natural.jpg',
  'https://www.ikea.com/pl/pl/images/products/aepplaryd-sofa-3-osobowa-lejde-jasnoszary__0992909_pe820327_s5.jpg',
  'https://e7.pngegg.com/pngimages/680/735/png-clipart-high-heeled-shoe-stiletto-heel-slipper-red-woman-blue-people.png',
  'https://www.thesprucepets.com/thmb/IjQ1w-JlBl6ZygXSkVOPFDWoXYE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/PEO-litter-robot-4-automatic-litterbox-vicky-wasik-photo-02-f7b4e1d9d7424f20be36713975cd585c.jpg',
  'https://www.iphones.ru/wp-content/uploads/2023/08/zeekr001-5.jpg',
];

final List<String> TextContent = [
  'iPhone 15 Pro Max',
  'Sofa IKEA',
  'Labuteni Krasnie',
  'Cat Toilet',
  'ZEEKR апельсин',
];

final List<double> PriceContent = [1499, 199, 15.99, 299, 29.99];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LiriShop'),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.deepPurple,
        body: ProductGrid(),
      ),
    );
  }
}


class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
        children: List.generate(ImageContent.length, (index) {
        return ProductCard(
          imageUrl: ImageContent[index],
          productName: TextContent[index],
          ProductPrice: PriceContent[index],
          );
      }),
    );
  }
}


class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double ProductPrice;

  ProductCard({required this.imageUrl, required this.productName, required this.ProductPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
        children:[
          Image.network(
              imageUrl,
              width: 80,
              height: 80,
          ),
          Text('\$${ProductPrice.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(productName),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    ImageContent: imageUrl,
                    TextContent: productName,
                  ),
                ),
              );
            },
            child: Text('Купить'),
          )
        ],
      ),
      ),
    );
  }
}


// class ProductDetailsPage extends StatelessWidget{
//   final String ImageContent;
//   final String TextContent;
//
//   ProductDetailsPage({required this.ImageContent, required this.TextContent});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(TextContent),
//       ),
//       body: Column(
//         children: [
//           Image.network(ImageContent),
//           Text(TextContent),
//         ],
//       ),
//     );
//   }
// }





