import 'package:flutter/material.dart';
import 'package:single_page_test/views/Default_view.dart';
import 'package:single_page_test/views/Final_view.dart';
import 'package:single_page_test/views/Home_view.dart';

Widget routerViews(int indexPage) {
  switch (indexPage) {
    case 0:
      return DefaultView();
      break;

    case 1:
      return HomeView();
      break;

    case 2:
      return FinalView();
      break;

    default:
      return DefaultView();
      break;
  }
}
