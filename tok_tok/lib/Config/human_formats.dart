import 'package:intl/intl.dart';

final class HumanFormats {
  static String humanReadbleNumber(int number) {
    final formattedNumber =
        NumberFormat.compactCurrency(decimalDigits: 0, symbol: '')
            .format(number);

    return formattedNumber;
  }
}
