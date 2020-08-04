import 'package:flutter/material.dart';
import 'package:single_page_test/provider/user_provider.dart';
import 'package:single_page_test/provider/viewcontroller_provider.dart';

import 'package:single_page_test/widgets/CustomButtons_widget.dart';
import 'package:single_page_test/widgets/RouterViews_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    //if consumer used, Changenotifier provider instead of provider
    ChangeNotifierProvider<ViewController>(create: (context) => ViewController()),
    Provider<UserProvider>(create: (context) => UserProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SPA",
      home: DefaultPage(),
    );
  }
}

class DefaultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DefaultState();
}

class _DefaultState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "SPA SAMPLE",
        ),
        centerTitle: true,
      ),
      body: Center(
        
          child: Container(
        padding: EdgeInsets.all(20.0),
        width: 800,
        height: 600,
        decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
              //si 1 es solido por eso usamos 15
              blurRadius: 15,
              spreadRadius: 3,

              color: Colors.grey.shade600,
            ),
          ],
          
          border: Border.all(
            color: Colors.black38,
            width: 2.0,
          ),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomButtons(context).myRaisedButton("default", () {
                  setState(() {
                    Provider.of<ViewController>(context, listen: false)
                        .setView(0);
                  });
                }),
                CustomButtons(context).myRaisedButton("register", () {
                  setState(() {
                    Provider.of<ViewController>(context, listen: false)
                        .setView(1);
                  });
                }),
                CustomButtons(context).myRaisedButton("final", () {
                  setState(() {
                    Provider.of<ViewController>(context, listen: false)
                        .setView(2);
                  });
                }),
              ],
            ),

            //Notify change should extend changenotifier
          //  Consumer<ViewController>(
              //  builder: (context, viewprovider, child)
                    //Show Desire View
                   // =>
          //consumer not longer needes ´cause provider.of subscribe
          //as default listen, when notify is invoked it will rebuild listener
          //using consumer routerViews(viewprovider.getview),
                    routerViews(Provider.of<ViewController>(context, listen: true).getView()),
          ],
        ),
      )),
    );
  }
}
