import 'package:flasop/pages/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  /*
     * Ces variables vont me permettre de faire passer
     * des informations des infos du produit selectionné
     * dans la pages du détail du produit.
     * @fFairePasserInfosDetail
     */
  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_new_price;

  const ProductDetails(
      {this.prod_detail_name,
      this.prod_detail_picture,
      this.prod_detail_old_price,
      this.prod_detail_new_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.orangeAccent,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text("flashop")),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          ),
        ],
      ),

      // ================LE CORPS DE LA PAGE=============
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 200,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.prod_detail_picture),
              ),
              //Pied de page de l'image
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.prod_detail_name,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Curve',
                        fontWeight: FontWeight.bold),
                  ),
                  title: new Row(
                    children: <Widget>[
                      new Expanded(
                        child: new Text("\$${widget.prod_detail_old_price}",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                decoration: TextDecoration.lineThrough)),
                      ),
                      new Expanded(
                        child: new Text("\$${widget.prod_detail_old_price}",
                            style: TextStyle(fontSize: 20, color: Colors.red)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // =============PREMIER BOUTON======================
          Row(
            children: <Widget>[
              // =======SIZE================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Taille"),
                            content: new Text("choisir une taille"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("fermer"),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 0.0,
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Taille"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // =======COLOR================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Couleur"),
                            content: new Text("choisir une couleur"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("fermer"),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 0.0,
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // =======QUANTITY================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Quantité"),
                            content: new Text("choisir une quantité"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("fermer"),
                              )
                            ],
                          );
                        });
                  },
                  elevation: 0.0,
                  color: Colors.brown,
                  textColor: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qté"),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          // =============DEUXIEME BOUTON======================
          Row(
            children: <Widget>[
              // =======SIZE================
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    elevation: 0.2,
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    child: new Text("Acheter maintenant")),
              ),
              new Icon(
                Icons.add_shopping_cart,
                color: Colors.red,
              ),
              new Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ],
          ),

          Divider(),

          new ListTile(
            title: Text("Détail sur le produit"),
            subtitle: Text(
                "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker."),
          ),

          Divider(),

          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Nom: ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.prod_detail_name),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Format: ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("XXL"),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Condition: ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New"),
              ),
            ],
          ),
          Divider(),
          // PRODUITS SIMILAIRES
          Padding(
              padding: EdgeInsets.all(8.0),
              child: new Text("Produits similaires",style: TextStyle(
                color: Colors.black,fontWeight: FontWeight.bold,
              ),)),
              
          Container(
            height: 360,
            child: SimilarProduct(),
          )
        ],
      ),
    );
  }
}

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
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
      "name": "Collant",
      "picture": "images/products/pants1.jpg",
      "old_price": 844,
      "price": 429,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return similar_Single_product(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class similar_Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const similar_Single_product(
      {Key key,
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
                      child: Text(prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                    ),
                    new Text(
                      "\$${prod_price}",
                      style: TextStyle(color: Colors.red),
                    )
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
