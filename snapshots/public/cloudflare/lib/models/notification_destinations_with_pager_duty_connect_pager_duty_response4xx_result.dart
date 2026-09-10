// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_uuid.dart';@immutable final class NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult {const NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult({this.id});

factory NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult.fromJson(Map<String, dynamic> json) { return NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult(
  id: json['id'] != null ? AaaUuid.fromJson(json['id'] as String) : null,
); }

/// UUID
final AaaUuid? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult copyWith({AaaUuid? Function()? id}) { return NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'NotificationDestinationsWithPagerDutyConnectPagerDutyResponse4xxResult(id: $id)'; } 
 }
