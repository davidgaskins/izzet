import 'package:angular/angular.dart';

import 'package:izzet/src/services/christmas/christmas_service.dart';

/// A fake service for providing a status component.
@Injectable()
class FakeChristmasService extends ChristmasService {

  FakeChristmasService(DateTime date) : super(date);

  @override
  String get title => 'Christmas';

  @override
  bool get status => true;
}