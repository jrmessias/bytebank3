import 'package:bytebank3/screens/contact_list.dart';
import 'package:bytebank3/screens/transactions_list.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Theme.of(context).accentColor,
              child: Image.asset("assets/images/bytebank_logo.png"),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _FeaturedItem(
                  'Transfers',
                  Icons.monetization_on,
                  onClick: () {
                    _showTransferList(context);
                    Flushbar(
                      message: "Transfers",
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.red,
                      icon: Icon(Icons.warning),
                    )..show(context);
                  },
                ),
                _FeaturedItem(
                  'Transfers feed',
                  Icons.description,
                  onClick: () {
                    _showTransactionsList(context);
                    Flushbar(
                      message: "Transfers Feed",
                      duration: Duration(seconds: 3),
                      backgroundColor: Colors.green,
                      icon: Icon(Icons.warning),
                    )..show(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _FeaturedItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  _FeaturedItem(this.name, this.icon, {@required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).accentColor,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 100,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  this.icon,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(
                  this.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showTransferList(context) {
//  Flushbar(
//    message: "Transfers",
//    duration: Duration(seconds: 3),
//    backgroundColor: Colors.green,
//  )..show(context);
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ContactList(),
    ),
  );
}

void _showTransactionsList(context) {
//  Flushbar(
//    message: "Transfers",
//    duration: Duration(seconds: 3),
//    backgroundColor: Colors.green,
//  )..show(context);
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => TransactionsList(),
    ),
  );
}
