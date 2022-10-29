import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MakeAccount extends StatefulWidget {
  const MakeAccount({Key? key}) : super(key: key);

  @override
  State<MakeAccount> createState() => _AccountState();
}

Widget buildParen() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.people_alt_rounded,
            color: Colors.orange,
          ),
          label: Text("Parent/Guardian"),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(300, 120),
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            primary: Colors.white,
            onPrimary: Colors.black87,
            elevation: 15,
            side: BorderSide(width: 2),
          ),
        ),
      ),
    ],
  );
}

Widget buildMySelf() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.people_alt_rounded,
            color: Colors.orange,
          ),
          label: Text("My Self"),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(300, 120),
            textStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            primary: Colors.white,
            onPrimary: Colors.black87,
            elevation: 15,
            side: BorderSide(width: 2),
          ),
        ),
      ),
    ],
  );
}

class _AccountState extends State<MakeAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Choose your account type ?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildParen(),
                      SizedBox(
                        height: 20,
                      ),
                      buildMySelf(),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
