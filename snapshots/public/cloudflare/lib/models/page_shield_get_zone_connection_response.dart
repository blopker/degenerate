// GENERATED CODE - DO NOT MODIFY BY HAND

import 'page_shield_connection.dart';final class PageShieldGetZoneConnectionResponse {const PageShieldGetZoneConnectionResponse({required this.result});

factory PageShieldGetZoneConnectionResponse.fromJson(Map<String, dynamic> json) { return PageShieldGetZoneConnectionResponse(
  result: PageShieldConnection.fromJson(json['result'] as Map<String, dynamic>),
); }

final PageShieldConnection result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PageShieldGetZoneConnectionResponse copyWith({PageShieldConnection? result}) { return PageShieldGetZoneConnectionResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldGetZoneConnectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PageShieldGetZoneConnectionResponse(result: $result)'; } 
 }
