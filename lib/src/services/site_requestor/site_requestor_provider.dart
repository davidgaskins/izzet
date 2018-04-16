import 'package:angular/angular.dart';
import 'package:izzet/src/services/site_requestor/fake_site_requestor_service.dart';
import 'package:izzet/src/services/site_requestor/site_requestor_service.dart';

SiteRequestorService siteRequestorFactory() => new FakeSiteRequestorService();
const siteRequestorProvider = const Provider<SiteRequestorService>(SiteRequestorService,
    useFactory: siteRequestorFactory);
