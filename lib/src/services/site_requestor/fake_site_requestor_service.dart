import 'package:izzet/src/services/site_requestor/site_requestor_service.dart';

class FakeSiteRequestorService extends SiteRequestorService {
  @override
  bool get status => true;

  @override
  String get title => 'up';

}