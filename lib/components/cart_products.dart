import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var product_on_the_cart = [
    {
      "name": "Veste",
      "picture": "images/products/blazer1.jpeg",
      "price": 80,
      "size": "M",
      "color": "Noir",
      "quatity": "4"
    },
    {
      "name": "Veste",
      "picture": "images/products/blazer2.jpeg",
      "price": 150,
      "size": "XL",
      "color": "orange",
      "quatity": "12"
    },
    {
      "name": "Robe",
      "picture": "images/products/dress1.jpeg",
      "price": 899,
      "size": "M",
      "color": "Jaune",
      "quatity": "2"
    },
    {
      "name": "Robe",
      "picture": "images/products/dress2.jpeg",
      "price": 225,
      "size": "L",
      "color": "bleu",
      "quatity": "6"
    },
    {
      "name": "Talon",
      "picture": "images/products/hills1.jpeg",
      "price": 133,
      "size": "M",
      "color": "Rouge",
      "quatity": "4"
    },
    {
      "name": "Sport",
      "picture": "images/products/hills2.jpeg",
      "price": 399,
      "size": "XM",
      "color": "magenta",
      "quatity": "10"
    },
    {
      "name": "Collant",
      "picture": "images/products/pants1.jpg",
      "price": 429,
      "size": "M",
      "color": "X",
      "quatity": "2"
    },
    {
      "name": "Chaussures",
      "picture": "images/products/pants2.jpeg",
      "price": 899,
      "size": "M",
      "color": "Vert",
      "quatity": "4"
    },
    {
      "name": "Blazer",
      "picture": "images/products/shoe1.jpg",
      "price": 180,
      "size": "M",
      "color": "orange",
      "quatity": "4"
    },
    {
      "name": "Jupe",
      "picture": "images/products/skt1.jpeg",
      "price": 230,
      "size": "M",
      "color": "Blanc",
      "quatity": "4"
    },
    {
      "name": "Jupe rose",
      "picture": "images/products/skt2.jpeg",
      "price": 230,
      "size": "M",
      "color": "orange",
      "quatity": "4"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: product_on_the_cart.length,
        itemBuilder: (context, index) {
          return single_cart_product(
            cart_prod_name: product_on_the_cart[index]["name"],
            cart_prod_picture: product_on_the_cart[index]["picture"],
            cart_prod_price: product_on_the_cart[index]["price"],
            cart_prod_size: product_on_the_cart[index]["size"],
            cart_prod_color: product_on_the_cart[index]["color"],
            cart_prod_quatity: product_on_the_cart[index]["quantity"],
          );
        });
  }
}

class single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quatity;

  const single_cart_product(
      {Key key,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_quatity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//      =======ZONE DU PREMIER PLAN: leading===========
        leading: new Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 100.0,
        ),

//      =======ZONE DU TITRE===========
        title: Text(cart_prod_name),

//      =======ZONE DU SOUS-TITRE===========
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                //===SECTION DE LA TAILLE
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Taille: '),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                //===SECTION DE LA COULEUR
                Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 4.0, 4.0, 4.0),
                  child: Text('Couleur:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(cart_prod_color,
                      style: TextStyle(color: Colors.red)),
                )
              ],
            ),
            //===SECTION DE LA COULEUR
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ),
          ],
        ),

//    ======ZONE DU TRAINANT========
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up,), onPressed: () {}),
            new Text("$cart_prod_quatity"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
