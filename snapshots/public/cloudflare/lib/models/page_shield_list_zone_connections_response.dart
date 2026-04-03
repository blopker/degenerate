// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'page_shield_connection.dart';@immutable final class PageShieldListZoneConnectionsResponse {const PageShieldListZoneConnectionsResponse({this.result});

factory PageShieldListZoneConnectionsResponse.fromJson(Map<String, dynamic> json) { return PageShieldListZoneConnectionsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => PageShieldConnection.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<PageShieldConnection>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
PageShieldListZoneConnectionsResponse copyWith({List<PageShieldConnection> Function()? result}) { return PageShieldListZoneConnectionsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageShieldListZoneConnectionsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'PageShieldListZoneConnectionsResponse(result: $result)'; } 
 }
