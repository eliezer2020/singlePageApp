import "package:flutter/material.dart";

class CustomButtons {
  final BuildContext context;

  CustomButtons(this.context);




  Widget myRaisedButton(String texto, Function callback) => RaisedButton(
      textColor: Colors.white,
      hoverColor: Colors.blueGrey,
      child: Text(
        texto,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: callback);
}
