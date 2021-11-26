import 'package:elbay/models/global.dart';
import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50, left: 10),
            constraints: BoxConstraints.expand(height: 80),
            child: Text("Hello. Sign In", style: elbayItallictTitleStyle),
            color: elbay_color,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: Text("Home"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
                TextButton(
                  child: Text("Your Orders"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
                TextButton(
                  child: Text("Your Premium"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
                TextButton(
                  child: Text("Your Account"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Shop by Department"),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text("Settings"),
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 20,
                                child: Image(
                                    image:
                                        AssetImage("lib/assets/tunisia.png")),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                  TextButton(
                    child: Text("Customer Service"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                ]),
          ),
        ]));
  }
}
