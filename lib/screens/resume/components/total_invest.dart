import 'package:fliper/config/colors/default.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ResumeTotalInvest extends StatelessWidget {
  final double total;

  const ResumeTotalInvest({
    @required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Text(
      'R\$ ' + _formatNumber(total ?? 0),
      style: TextStyle(
        fontSize: size.width * .06,
        fontWeight: FontWeight.bold,
        color: DefaultColors.defaultBlue,
      ),
    );
  }

  String _formatNumber(double number) {
    if (number == 0) {
      return '0,00';
    }

    var f = NumberFormat("###.00#", "pt_BR");
    return f.format(number);
  }
}
