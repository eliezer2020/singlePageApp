import 'package:flutter/material.dart';
import 'package:single_page_test/widgets/CustomButtons_widget.dart';
import 'package:single_page_test/widgets/RouterViews_widget.dart';


void main(){
  runApp(MyApp());
  }
  
  class MyApp extends StatelessWidget{
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

    

    int _indexPage=0; 
  
    
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(title: Text("SPA SAMPLE",),
      centerTitle: true,),
      body: Center(
      
      child: Container(
        padding: EdgeInsets.all(20.0),
        width: 800,
        height: 600,
        decoration: BoxDecoration(
         border: Border.all(
           width: 3.0,
         ),
         
          //color: Colors.grey[200],
        ),
        child: 
        Column(children: <Widget>[
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CustomButtons(context).myRaisedButton("test2", (){
               
                setState(() {
                   _indexPage=0;
                });
              }),
               CustomButtons(context).myRaisedButton("test3", (){

                 setState(() {
                   _indexPage=1;
                });
               }),
               CustomButtons(context).myRaisedButton("test4", (){

                 setState(() {
                   _indexPage=2;
                });
               }),
            ],
           
          ),

          
        routerViews(_indexPage)],
          ),
        )),
          );
        }
      
    

        }
