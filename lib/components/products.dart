import 'package:flasop/pages/product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Veste",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Veste",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 400,
      "price": 150,
    },
    {
      "name": "Robe",
      "picture": "images/products/dress1.jpeg",
      "old_price": 1200,
      "price": 899,
    },
    {
      "name": "Robe",
      "picture": "images/products/dress2.jpeg",
      "old_price": 380,
      "price": 225,
    },
    {
      "name": "Talon",
      "picture": "images/products/hills1.jpeg",
      "old_price": 150,
      "price": 133,
    },
    {
      "name": "Sport",
      "picture": "images/products/hills2.jpeg",
      "old_price": 500,
      "price": 399,
    },
    {
      "name": "Collant",
      "picture": "images/products/pants1.jpg",
      "old_price": 844,
      "price": 429,
    },
    {
      "name": "Chaussures",
      "picture": "images/products/pants2.jpeg",
      "old_price": 1350,
      "price": 899,
    },
    {
      "name": "Blazer",
      "picture": "images/products/shoe1.jpg",
      "old_price": 200,
      "price": 180,
    },
    {
      "name": "Jupe",
      "picture": "images/products/skt1.jpeg",
      "old_price": 650,
      "price": 230,
    },
    {
      "name": "Jupe rose",
      "picture": "images/products/skt2.jpeg",
      "old_price": 300,
      "price": 230,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_product(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const Single_product({
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("Hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                    prod_detail_name: prod_name,
                    prod_detail_picture: prod_picture,
                    prod_detail_old_price: prod_old_price,
                    prod_detail_new_price: prod_price))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                    ),
                    new Text(
                      "\$$prod_price", style: TextStyle(color: Colors.red),)
                  ],
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
