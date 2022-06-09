import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(100.0, 50.0, 100.0, 40.0),
                child: Image.asset('images/logo.jpg', width: 100),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Jewelry Shop Abu Dabi',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 3.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                      Shadow(
                        offset: Offset(2.0, 3.0),
                        blurRadius: 10.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 4.0,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          'Insert Your E-Mail Address'
                        )
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                            CupertinoIcons.eye_fill,
                          color: Colors.grey,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        2.0,
                        2.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 4.0,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                            'Insert Your Password'
                        )
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.eye_fill,
                          color: Colors.grey,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              // Button
              Container(
                padding: const EdgeInsets.all(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    'Sign In Now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}