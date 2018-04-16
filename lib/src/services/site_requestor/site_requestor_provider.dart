import 'package:angular/angular.dart';
import 'package:izzet/src/services/site_requestor/site_requestor_service.dart';

SiteRequestorService siteRequestorFactory() =>
    new SiteRequestorService('http://localhost:8081');
const siteRequestorProvider = const Provider<SiteRequestorService>(
    SiteRequestorService,
    useFactory: siteRequestorFactory);
