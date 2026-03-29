// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls which cookies appear in the Cache Key.
/// 
final class ZonesCacheKeyFieldsValueCookie {const ZonesCacheKeyFieldsValueCookie({this.checkPresence, this.include, });

factory ZonesCacheKeyFieldsValueCookie.fromJson(Map<String, dynamic> json) { return ZonesCacheKeyFieldsValueCookie(
  checkPresence: (json['check_presence'] as List<dynamic>?)?.map((e) => e as String).toList(),
  include: (json['include'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of cookies to check for the presence of, without
/// including their actual values.
/// 
final List<String>? checkPresence;

/// A list of cookies to include.
/// 
final List<String>? include;

Map<String, dynamic> toJson() { return {
  'check_presence': ?checkPresence,
  'include': ?include,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'check_presence', 'include'}.contains(key)); } 
ZonesCacheKeyFieldsValueCookie copyWith({List<String> Function()? checkPresence, List<String> Function()? include, }) { return ZonesCacheKeyFieldsValueCookie(
  checkPresence: checkPresence != null ? checkPresence() : this.checkPresence,
  include: include != null ? include() : this.include,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheKeyFieldsValueCookie &&
          listEquals(checkPresence, other.checkPresence) &&
          listEquals(include, other.include); } 
@override int get hashCode { return Object.hash(Object.hashAll(checkPresence ?? const []), Object.hashAll(include ?? const [])); } 
@override String toString() { return 'ZonesCacheKeyFieldsValueCookie(checkPresence: $checkPresence, include: $include)'; } 
 }
