import 'package:flutter/cupertino.dart';


class ViewController with ChangeNotifier{
   int _indexPage=0;

  //CHECK RouterView for index
  void setView(int index){
    _indexPage= index;
    notifyListeners();
  }

  int getView()=>this._indexPage;



 


    }



