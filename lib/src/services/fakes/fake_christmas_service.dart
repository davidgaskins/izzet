import 'package:angular/angular.dart';

import '../christmas_service.dart';

/// A fake service for providing a status component
@Injectable()
class FakeChristmasService extends ChristmasService {

  @override
  String get title => 'Christmas';

  @override
  bool get status => true;
}