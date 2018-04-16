import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:izzet/src/components/status_component/status_component.dart';
import 'package:izzet/src/services/boolean_mixin.dart';
import 'package:izzet/src/services/christmas/christmas_service.dart';
import 'package:izzet/src/services/christmas/christmas_service_provider.dart';
import 'package:izzet/src/services/site_requestor/site_requestor_provider.dart';
import 'package:izzet/src/services/site_requestor/site_requestor_service.dart';

/// A component to render any number of statuses.
@Component(
  selector: 'dashboard',
  styleUrls: const ['dashboard_component.css'],
  templateUrl: 'dashboard_component.html',
  directives: const [materialDirectives, NgFor, StatusComponent],
  providers: const [
    materialProviders,
    christmasServiceProvider,
    siteRequestorProvider
  ],
)
class DashboardComponent {
  List<BooleanMixin> statuses = [];

  DashboardComponent(ChristmasService christmasService,
      SiteRequestorService siteRequestorService) {
    statuses.add(christmasService);
    statuses.add(siteRequestorService);
  }
}
