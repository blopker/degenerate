// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_cookie.dart';final class PageShieldListZoneCookiesResponse {const PageShieldListZoneCookiesResponse({required this.result});

factory PageShieldListZoneCookiesResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZoneCookiesResponse(
  result: (json['result'] as List<dynamic>).map((e) => PageShieldCookie.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldCookie> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldListZoneCookiesResponse copyWith({List<PageShieldCookie>? result}) { return PageShieldListZoneCookiesResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZoneCookiesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'PageShieldListZoneCookiesResponse(result: $result)'; } 
 }
