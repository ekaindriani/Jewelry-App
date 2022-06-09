import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jewelry Shop"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
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
                      children: <Widget>[
                        Image.asset('images/1.png', width: 50),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'Necklaces'
                        ),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        FavButton(),
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
                      children: <Widget>[
                        Image.asset('images/2.png', width: 50),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                            'Rings'
                        ),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        FavButton(),
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
                      children: <Widget>[
                        Image.asset('images/3.png', width: 50),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                            'Earrings'
                        ),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        FavButton(),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    'Back To Sign In',
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

class FavButton extends StatefulWidget {
  const FavButton({Key? key}) : super(key: key);

  @override
  _FavButton createState() => _FavButton();
}

class _FavButton extends State<FavButton> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isClick ? CupertinoIcons.suit_heart_fill : CupertinoIcons.suit_heart,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isClick = !isClick;
        });
      },
    );
  }
}