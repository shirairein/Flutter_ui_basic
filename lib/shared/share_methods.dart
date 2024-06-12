import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:intl/intl.dart';

String formatCurrency(int number, {String symbol = 'Rp'}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp',
    decimalDigits: 0,
  ).format(number);
}

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: purpleColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

void showDefaultSnackbarFlutter(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: purpleColor,
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
      duration: const Duration(seconds: 1),
    ),
  );
}
