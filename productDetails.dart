import 'package:flutter/material.dart';


class ProductDetailsPage extends StatelessWidget{
  final String ImageContent;
  final String TextContent;
  final String productDescription;

  ProductDetailsPage({required this.ImageContent, required this.TextContent, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextContent),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Image.network(ImageContent, width: 300, height: 300,),
          SizedBox(height: 20,),
          Text(TextContent, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Text(productDescription, style: TextStyle(fontSize: 16,)
            ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Liked'),
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Cart'),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Buy in one click'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
