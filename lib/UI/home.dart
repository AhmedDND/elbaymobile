import 'package:elbay/UI/checkout.dart';
import 'package:elbay/UI/drawer_tab.dart';
import 'package:elbay/UI/product_list.dart';
import 'package:elbay/models/global.dart';
import 'package:elbay/models/product_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: DrawerTab()),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: elbay_text),
        backgroundColor: elbay_color,
        title: Image(
          image: AssetImage('lib/assets/elbay_logo.png'),
          height: 50.0,
        ),
        centerTitle: true,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 20.0),
                child: InkResponse(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Checkout(),
                    ),
                  ),
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30.0,
                    color: elbay_text,
                  ),
                ),
              ),
              Positioned(
                bottom: 8.0,
                right: 16.0,
                child: Container(
                  height: 20.0,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('Search'),
              child: Icon(
                Icons.search,
                size: 30.0,
                color: elbay_text,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('lib/assets/cover_picture.png'),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          ProductList(
            title: 'Phones',
            products: phones,
          ),
          ProductList(title: 'Speakers', products: headphones),
          ProductList(title: 'Headphones', products: speakers),
          ProductList(title: 'Lights', products: lights),
        ],
      ),
    );
  }
}
