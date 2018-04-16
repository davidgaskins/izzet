import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

import '../../services/boolean_mixin.dart';
import '../../services/fakes/fake_christmas_service.dart';

/// A component that renders an individual status.
@Component(
  selector: 'status',
  styleUrls: const ['status_component.css'],
  templateUrl: 'status_component.html',
  directives: const [materialDirectives, NgClass, NgIf],
  providers: const [materialProviders, FakeChristmasService],
)
class StatusComponent {

  BooleanMixin _statusService;
  StatusComponent(FakeChristmasService fakeChristmasService) {
    this._statusService = fakeChristmasService;
  }
  String get title => _statusService.title;
  bool get status => _statusService.status;
  String get statusClass => _statusService.status.toString();
}
