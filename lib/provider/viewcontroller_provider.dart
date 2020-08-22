import 'package:flutter/cupertino.dart';

class ViewController with ChangeNotifier {
  int _indexPage = 0;

  //CHECK RouterView for index
  void setView(int index) {
    _indexPage = index;
    //hace rebuild de suscriptores
    notifyListeners();
  }

  //metodo que retorna a la pagina anterior
  void goBack() {
    if (_indexPage > 0) {
      _indexPage--;
      notifyListeners();
    } else {
      return null;
    }
  }

  int getView() => this._indexPage;
}
