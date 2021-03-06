import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:pawon/screen/beranda.dart';
import 'package:pawon/satuan.dart';

class Hm extends StatefulWidget {
  @override
  _HmState createState() => _HmState();
}

class _HmState extends State<Hm> {
  final email = TextEditingController();
  final pw = TextEditingController();

  final emaildaf = TextEditingController();
  final pwdaf = TextEditingController();
////////////signup
  void signup() {
    Get.bottomSheet(Container(
      padding: EdgeInsets.all(15),
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: teal,
      ),
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign up",
                style: TextStyle(
                    color: putih, fontFamily: 'Poppins-bold', fontSize: 30),
              )),
          jar15,
          input("Email", emaildaf, false),
          jar10,
          input("Password", pwdaf, true),
          jar20,
          MaterialButton(
              elevation: 2,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              splashColor: teal,
              textColor: teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              minWidth: MediaQuery.of(context).size.width,
              height: tinggi,
              color: putih,
              child: Text("Sign up"),
              onPressed: () {
                Get.back();
              }),
        ],
      ),
    ));
  }
//////////signup

  Widget input(String nama, final control, bool ob) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 1, 15, 0),
      width: double.infinity,
      child: TextField(
        obscureText: ob,
        controller: control,
        onChanged: (value) {
          setState(() {});
        },
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: nama,
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0)
          ]),
    );
  }

  Widget tombol() {
    return Container(
      height: 330,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              input("Email", email, false),
              jar10,
              input("Password", pw, true),
              jar20,
              MaterialButton(
                  elevation: 2,
                  focusElevation: 0,
                  hoverElevation: 0,
                  highlightElevation: 0,
                  splashColor: putih,
                  textColor: putih,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  minWidth: MediaQuery.of(context).size.width,
                  height: tinggi,
                  color: teal,
                  child: Text("Sign in"),
                  onPressed: () {
                    Get.to(Beranda(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 400));
                  }),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                        elevation: 2,
                        focusElevation: 0,
                        hoverElevation: 0,
                        highlightElevation: 0,
                        splashColor: Colors.teal,
                        textColor: putih,
                        shape: CircleBorder(),
                        height: tinggi,
                        color: putih,
                        child: FaIcon(
                          FontAwesomeIcons.google,
                          color: teal,
                        ),
                        onPressed: () {}),
                    MaterialButton(
                        elevation: 2,
                        focusElevation: 0,
                        hoverElevation: 0,
                        highlightElevation: 0,
                        splashColor: Colors.teal,
                        textColor: putih,
                        shape: CircleBorder(),
                        height: tinggi,
                        color: putih,
                        child: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: teal,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              signup();
            },
            child: Text("Sign up",
                style: TextStyle(
                  color: putih,
                )),
          ),
        ],
      ),
    );
  }

  Widget gambar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        "assets/depan.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget tulisan() {
    return Positioned(
        top: 100,
        left: 15,
        child: Text(
          "Cari dan\ntemukan resep\nyang cocok untuk anda",
          style:
              TextStyle(color: putih, fontFamily: 'Poppins-bold', fontSize: 30),
        ));
  }

  Widget buri() {
    return Positioned(
        top: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.grey.withOpacity(1),
                Colors.grey.withOpacity(0)
              ])),
        ));
  }

  Widget burii() {
    return Positioned(
        bottom: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Colors.grey.withOpacity(1),
                Colors.grey.withOpacity(0)
              ])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            gambar(),
            buri(),
            burii(),
            Positioned(bottom: 15, left: 0, right: 0, child: tombol()),
            tulisan(),
          ],
        ),
      ),
    );
  }
}

