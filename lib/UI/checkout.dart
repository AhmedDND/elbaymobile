import 'package:elbay/models/global.dart';
import 'package:elbay/models/product_model.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  _buildCartProduct(int index) {
    return ListTile(
      contentPadding: EdgeInsets.all(20.0),
      leading: Image(
        height: double.infinity,
        width: 100.0,
        image: AssetImage(
          cart[index].imageUrl,
        ),
        fit: BoxFit.contain,
      ),
      title: Text(
        cart[index].name,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'x1',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        '\$${cart[index].price.toStringAsFixed(2)}',
        style: TextStyle(
          color: elbay_text,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: elbay_text),
        backgroundColor: elbay_color,
        title: Text(
          'Shopping Cart (${cart.length})',
          style: TextStyle(color: elbay_text),
        ),
      ),
      body: ListView.separated(
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildCartProduct(index);
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey[300],
          );
        },
      ),
      bottomSheet: Container(
        height: 88.0,
        color: elbay_color,
        child: Center(
          child: Text(
            'PLACE ORDER (\$9999999999)',
            style: TextStyle(
              color: elbay_text,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
