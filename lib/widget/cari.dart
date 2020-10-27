import 'package:flutter/material.dart';
import 'package:pawon/screen/satuan.dart';

class Cari extends StatefulWidget {
  @override
  _CariState createState() => _CariState();
}

class _CariState extends State<Cari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              floating: true,
              expandedHeight: 0,
              flexibleSpace: Hero(
                tag: 'cari',
                child: Container(
                  color: teal,
                  child: Text("cari"),
                ),
              )),
        ],
      )),
    );
  }
}
