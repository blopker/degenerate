// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_get_zone_script_response_result.dart';@immutable final class PageShieldGetZoneScriptResponse {const PageShieldGetZoneScriptResponse({required this.result});

factory PageShieldGetZoneScriptResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetZoneScriptResponse(
  result: PageShieldGetZoneScriptResponseResult.fromJson(json['result'] as Map<String, dynamic>),
); }

final PageShieldGetZoneScriptResponseResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldGetZoneScriptResponse copyWith({PageShieldGetZoneScriptResponseResult? result}) { return PageShieldGetZoneScriptResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetZoneScriptResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldGetZoneScriptResponse(result: $result)'; } 
 }
