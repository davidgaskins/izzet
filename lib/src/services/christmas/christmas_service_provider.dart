import 'package:angular/angular.dart';
import 'package:izzet/src/services/christmas/christmas_service.dart';
import 'package:izzet/src/services/christmas/fake_christmas_service.dart';

ChristmasService christmasServiceFactory() =>
    new FakeChristmasService(new DateTime.now());
const christmasServiceProvider = const Provider<ChristmasService>(
    ChristmasService,
    useFactory: christmasServiceFactory);
