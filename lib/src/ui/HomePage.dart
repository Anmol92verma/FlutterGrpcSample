import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _logout() async {
    try {
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Auth Demo"),
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder(
        future: Future.value("User"),
        builder: (context, snapshot) {
          String firebaseUser = snapshot.data;
          return snapshot.hasData
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SignIn Success 😊",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("UserId:uid"),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Registered Phone Number: username"),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  onPressed: _logout,
                  child: Text(
                    "LogOut",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.cyan,
                )
              ],
            ),
          )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}