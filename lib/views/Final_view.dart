import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:single_page_test/provider/user_provider.dart';
import 'package:single_page_test/provider/viewcontroller_provider.dart';
import 'package:single_page_test/widgets/CustomButtons_widget.dart';

class FinalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text("FIANAL PAGE"),
                Icon(Icons.people, color: Colors.blueAccent,),
                Text("welcome ... "+Provider.of<UserProvider>(context).nombre,
                style: TextStyle(fontSize: 20.0),),
                Spacer(),
                CustomButtons(context).myFlatButton("LOGOUT", (){
                Provider.of<UserProvider>(context, listen: false).nombre= "ANOM";
                Provider.of<UserProvider>(context, listen: false).correo= "ANOM";
                Provider.of<ViewController>(context
              , listen: false).setView(0);

                }),
              ],
            )

          )),
    );
  }
}
