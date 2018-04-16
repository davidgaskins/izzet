import 'package:izzet/src/services/site_requestor/site_requestor_service.dart';

class FakeSiteRequestorService extends SiteRequestorService {
  FakeSiteRequestorService(String url) : super(url);

  @override
  bool get status => true;

  @override
  String get title => 'fake url';

}