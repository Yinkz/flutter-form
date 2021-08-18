import 'package:flutter/material.dart';

class FormResult extends StatelessWidget {

  final String firstname;
  final String lastname;

  FormResult(this.firstname, this.lastname);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('Firstname: ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),),
                  SizedBox(width: 15.0,),
                  Text(firstname,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text('Lastname: ',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),),
                  SizedBox(width: 15.0,),
                  Text(lastname,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}