import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:single_page_test/provider/user_provider.dart';

import 'package:single_page_test/provider/viewcontroller_provider.dart';
import 'package:single_page_test/widgets/CustomButtons_widget.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
//Form controllers
  final _formKey = new GlobalKey<FormState>();
  final _formUsername = new TextEditingController();
  final _formEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 480,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            homeForm(context),
          ],
        ),
      ),
    );
  }

  Widget homeForm(BuildContext context) {
    //Resolved with Provider,
    //All widgets can modify View

    return Form(
        key: _formKey,
        autovalidate: false,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _formUsername,
              decoration: InputDecoration(
                //labelStyle: TextStyle(color: Colors.blueAccent),
                labelText: "Ingrese nombre completo",
              ),
              validator: (String value) {
                return (value.isEmpty) ? " Ingrese nombre " : null;
              },
            ),
            TextFormField(
              controller: _formEmail,
              decoration: InputDecoration(
                //labelStyle: TextStyle(color: Colors.blueAccent),
                labelText: "Ingrese email",
              ),
              validator: (String value) {
                return (!value.contains("@")) ? " Ingrese Email valido " : null;
              },
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtons(context).myFlatButton("back", () {
                  Provider.of<ViewController>(context, listen: false).goBack();
                }),
                CustomButtons(context).myFlatButton("continue", () {
                  _formKey.currentState.validate();
                  if (_formKey.currentState.validate()) {
                    //set user provider
                    Provider.of<UserProvider>(context, listen: false).nombre =
                        _formUsername.text;
                    Provider.of<UserProvider>(context, listen: false).correo =
                        _formEmail.text;

                    //push final page
                    Provider.of<ViewController>(context, listen: false)
                        .setView(2);
                  }
                }),
              ],
            ),
          ],
        ));
  }
}
