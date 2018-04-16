import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:izzet/src/components/status_component/status_component.dart';
import 'package:izzet/src/services/boolean_mixin.dart';
import 'package:izzet/src/services/christmas/christmas_service.dart';
import 'package:izzet/src/services/christmas/christmas_service_provider.dart';

@Component(
  selector: 'dashboard',
  styleUrls: const ['dashboard_component.css'],
  templateUrl: 'dashboard_component.html',
  directives: const [materialDirectives, NgFor, StatusComponent],
  providers: const [materialProviders, christmasServiceProvider],
)
class DashboardComponent {

  List<BooleanMixin> statuses = [];
  DashboardComponent(ChristmasService christmasService) {
    statuses.add(christmasService);
  }
}