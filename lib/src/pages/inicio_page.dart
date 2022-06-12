import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_pege.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inicio extends StatefulWidget {
  inicio({Key? key}) : super(key: key);

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          menu(),
          SingleChildScrollView(
            child: Column(children: [
              // _titulos(),
              // _botonesRedondeado(),
            ]),
          )
        ],
      ),
      // bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget menu() {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP page'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 38,
                  ),
                ],
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      drawer: Container(
        width: 170.0,
        child: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            color: Colors.black,
            child: new ListView(
              padding: EdgeInsets.only(top: 50.0),
              children: <Widget>[
                Expanded(
                  child: Flexible(
                    child: Container(
                      height: 140,
                      width: 120,
                      child: Flexible(
                        child: new UserAccountsDrawerHeader(
                          accountName: new Text(''),
                          accountEmail: new Text(''),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/1.jpeg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    ' basico',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.home,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => Basicopage(),
                  )),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'Scroll page',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.card_giftcard,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => scrollPage(),
                  )),
                ),
                new Divider(),
                new ListTile(
                  title: new Text(
                    'BotonesPage',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: new Icon(
                    Icons.card_giftcard,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => BotonesPage(),
                  )),
                ),
                new Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
