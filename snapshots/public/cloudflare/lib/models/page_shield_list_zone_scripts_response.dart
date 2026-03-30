// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_script.dart';final class PageShieldListZoneScriptsResponse {const PageShieldListZoneScriptsResponse({required this.result});

factory PageShieldListZoneScriptsResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZoneScriptsResponse(
  result: (json['result'] as List<dynamic>).map((e) => PageShieldScript.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldScript> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldListZoneScriptsResponse copyWith({List<PageShieldScript>? result}) { return PageShieldListZoneScriptsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZoneScriptsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'PageShieldListZoneScriptsResponse(result: $result)'; } 
 }
