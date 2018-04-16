import 'boolean_mixin.dart';

/// A service to tell if today is christmas.
abstract class ChristmasService extends BooleanMixin {
  String get title;
  bool get status;
}