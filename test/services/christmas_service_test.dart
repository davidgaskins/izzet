import 'package:izzet/src/services/christmas/christmas_service.dart';
import 'package:test/test.dart';
main() {
  ChristmasService service;
  test('christmas of 2018', (){
    service = new ChristmasService(new DateTime(2018, 12, 25));
    expect(service.status, isTrue);
  });

  test('wrong month', (){
    service = new ChristmasService(new DateTime(2018, 11, 25));
    expect(service.status, isFalse);
  });

  test('wrong day', (){
    service = new ChristmasService(new DateTime(2018, 12, 20));
    expect(service.status, isFalse);
  });

  test('different year', () {
    service = new ChristmasService(new DateTime(2013, 12, 25));
    expect(service.status, isTrue);
  });
}