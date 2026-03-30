// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_cookie.dart';final class PageShieldGetZoneCookieResponse {const PageShieldGetZoneCookieResponse({required this.result});

factory PageShieldGetZoneCookieResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetZoneCookieResponse(
  result: PageShieldCookie.fromJson(json['result'] as Map<String, dynamic>),
); }

final PageShieldCookie result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldGetZoneCookieResponse copyWith({PageShieldCookie? result}) { return PageShieldGetZoneCookieResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetZoneCookieResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldGetZoneCookieResponse(result: $result)'; } 
 }
