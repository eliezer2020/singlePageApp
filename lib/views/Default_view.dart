import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_page_test/provider/viewcontroller_provider.dart';
import 'package:single_page_test/widgets/CustomButtons_widget.dart';

class DefaultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButtons(context).myFlatButton("       User login        ",
                () {
              Provider.of<ViewController>(context, listen: false).setView(1);
            }),
            CustomButtons(context).myFlatButton("Anonymously Login", () {
              Provider.of<ViewController>(context, listen: false).setView(2);
            }),
          ],
        ),
      ),
    );
  }
}
