import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

import '../../services/boolean_mixin.dart';

/// A component that renders an individual status.
@Component(
  selector: 'status',
  styleUrls: const ['status_component.css'],
  templateUrl: 'status_component.html',
  directives: const [materialDirectives, NgClass, NgIf],
  providers: const [materialProviders],
)
class StatusComponent {

  @Input()
  BooleanMixin statusService;
  StatusComponent() {}

  String get title => statusService.title;
  bool get status => statusService.status;
  String get statusClass => statusService.status.toString();
}
