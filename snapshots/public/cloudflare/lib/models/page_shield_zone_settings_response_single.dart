// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PageShieldZoneSettingsResponseSingle {const PageShieldZoneSettingsResponseSingle({this.result});

factory PageShieldZoneSettingsResponseSingle.fromJson(Map<String, dynamic> json) { return PageShieldZoneSettingsResponseSingle(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageShieldZoneSettingsResponseSingle copyWith({Map<String, dynamic> Function()? result}) { return PageShieldZoneSettingsResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldZoneSettingsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldZoneSettingsResponseSingle(result: $result)'; } 
 }
