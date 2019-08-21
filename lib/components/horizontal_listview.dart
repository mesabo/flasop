import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'Tshirt',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Colier',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Robe',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Veste',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Pull',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Pantalon',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Chaussures',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const Category({Key key, this.image_location, this.image_caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 12.0,fontFamily: 'Exo2'),
                )),
          ),
        ),
      ),
    );
  }
}
