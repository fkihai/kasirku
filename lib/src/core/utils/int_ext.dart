import 'package:intl/intl.dart';

extension IntegerExt on int {
  String get currenycyFormatRp =>
      NumberFormat.currency(locale: 'id', symbol: 'Rp. ', decimalDigits: 0)
          .format(this);
}
