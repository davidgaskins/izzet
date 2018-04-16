import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:izzet/src/services/christmas/christmas_service.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

import '../../services/boolean_mixin.dart';
import '../../services/christmas/christmas_service_provider.dart';

/// A component that renders an individual status.
@Component(
  selector: 'status',
  styleUrls: const ['status_component.css'],
  templateUrl: 'status_component.html',
  directives: const [materialDirectives, NgClass, NgIf],
  providers: const [materialProviders, christmasServiceProvider],
)
class StatusComponent {

  BooleanMixin _statusService;
  StatusComponent(ChristmasService fakeChristmasService) {
    this._statusService = fakeChristmasService;
  }
  String get title => _statusService.title;
  bool get status => _statusService.status;
  String get statusClass => _statusService.status.toString();
}
