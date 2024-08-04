import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:free_books/Core/utils/constants.dart';

void showMessgae({
  required String text,
}) {
  Fluttertoast.showToast(
    msg: text,
    backgroundColor: Colors.grey,
    fontSize: 18,
    gravity: ToastGravity.BOTTOM,
    textColor: avaliableColor,
    toastLength: Toast.LENGTH_LONG,
  );
}
