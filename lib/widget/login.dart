import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pawon/screen/satuan.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final pw = TextEditingController();

  Widget input(final control, String label, bool ob) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(15, 4, 15, 0),
          width: double.infinity,
          child: TextField(
            obscureText: ob,
            onChanged: (value) {
              setState(() {});
            },
            maxLength: 20,
            controller: control,
            keyboardType: TextInputType.text,
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              counter: SizedBox(width: 0, height: 0),
              hintText: label,
              border: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 0)
              ]),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: putih,
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/depan.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 130,
                child: Column(
                  children: <Widget>[
                    input(email, "Email", false),
                    SizedBox(
                      height: 15,
                    ),
                    input(pw, "Password", true)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
