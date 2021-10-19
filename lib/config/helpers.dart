import 'package:intl/intl.dart';

abstract class AppHelpers {
  static formatCurrency(double? number) {
    if (number == 0) {
      return '0,00';
    }
    NumberFormat formatter = NumberFormat.simpleCurrency();
    return formatter.format(number);
  }
}
