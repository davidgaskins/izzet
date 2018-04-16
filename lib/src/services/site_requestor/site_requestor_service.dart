import 'dart:html';

import 'package:izzet/src/services/boolean_mixin.dart';

class SiteRequestorService extends BooleanMixin {
  String _url;

  SiteRequestorService(this._url) {}

  @override
  bool get status {
    bool results = false;
    try {
      HttpRequest
          .getString(_url)
          .then((json) => results = true)
      .catchError((err)=> results = false);
    } catch(err) {
      results = false;
    }
    return results;
  }

  @override
  String get title => this._url;
}
