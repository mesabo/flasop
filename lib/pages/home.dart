import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flasop/components/horizontal_listview.dart';
import 'package:flasop/components/products.dart';
import 'package:flasop/pages/Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        autoplay: false,
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
        // animationDuration: Duration(milliseconds: 3000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('shopping en ligne'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("À venir",
                      style:
                          TextStyle(color: Colors.indigo, fontFamily: 'Exo2')),
                ),
                PopupMenuItem(
                  child: Text("À Historique",
                      style:
                          TextStyle(color: Colors.indigo, fontFamily: 'Exo2')),
                ),
                PopupMenuItem(
                  child: Text("Conseiller en ligne",
                      style:
                          TextStyle(color: Colors.indigo, fontFamily: 'Exo2')),
                ),
              ];
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mesabo"),
              accountEmail: Text("mesabo18@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange[600],
              ),
            ),

            //Body
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.orangeAccent,
                ),
                title: Text(
                  "Accueil",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.orangeAccent,
                ),
                title: Text(
                  "Mon compte",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.orangeAccent,
                ),
                title: Text(
                  "Panier",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.orangeAccent,
                ),
                title: Text(
                  "shopping",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.orangeAccent,
                ),
                title: Text(
                  "Favories",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text(
                  "Paramètres",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
                title: Text(
                  "Aides",
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
          ],
        ),
      ),

      //Body du main
      //Debut deu carousel
      body: new Column(
        children: <Widget>[
          //image_carousel,
          new Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "Catégorie",
              style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Curve',
                  color: Colors.lightBlueAccent),
            ),
          ),
          HorizontalList(),
          new Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Produits récents",
              style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Curve',
                  color: Colors.lightBlueAccent),
            ),
          ),
          // Tout dans un gridview
          Flexible(
            child: Products(),
          )
        ],
      ),
    );
  }
}
