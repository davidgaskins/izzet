import 'package:meta/meta.dart';

import '../boolean_mixin.dart';

/// A service to tell if today is christmas.
class ChristmasService extends BooleanMixin {

  /// The date to check against.
  DateTime _date;

  ChristmasService(this._date) {}

  @override
  String get title => 'Christmas';

  @override
  bool get status => isChristmas(_date);

  @visibleForTesting
  bool isChristmas(DateTime date) =>
      date.month == DateTime.december && date.day == 25;
}
