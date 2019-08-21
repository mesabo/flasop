import 'package:flasop/components/cart_products.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Carte'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: (){},
          ),
        ],
      ),

      //DÉBUT DU CONTENU DE LA CARTE
      body: new CartProducts(),
      //FIN DU CONTENU DE LA CARTE

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total: "),
                subtitle: new Text("\$250"),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: (){},
                child: new Text("Tout annuler"),
                color: Colors.deepOrange,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
