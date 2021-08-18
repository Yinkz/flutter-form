import 'package:flutter/material.dart';
import 'package:flutter_form/formresult.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late String firstname;
  late String lastname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200.0,
                    width: 100.0,
                    child: Image.asset('images/zuri.jpeg'),
                  ),
                  Container(
                    height: 50.0,
                    width: 100.0,
                    child: Image.asset('images/hng.jpeg'),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height: 200.0,
                    width: 100.0,
                    child: Image.asset('images/i4g.jpeg'),
                  ),
                ],
              ),

            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                firstname = value;
              },
              decoration: InputDecoration(
                hintText: 'firstname',

              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                lastname = value;
              },
              decoration: InputDecoration(
                hintText: 'lastname',

              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlue,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FormResult(firstname, lastname)));
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    "Enter",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}