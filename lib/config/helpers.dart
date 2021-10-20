import 'package:intl/intl.dart';

abstract class AppHelpers {
  static formatCurrency(double? number) {
    if (number == 0) {
      return '0,00';
    }
    NumberFormat formatter = NumberFormat.simpleCurrency();
    return formatter.format(number);
  }

  static formatPercent(double? number) {
    final formatter = NumberFormat('###.00#', 'en_US');

    if (number == 0) {
      return '0,00';
    }

    if (number! > 100) {
      NumberFormat formatter = NumberFormat.simpleCurrency();
      return formatter.format(number).substring(2) + '%';
    }

    return formatter.format(number) + '%';
  }
}
