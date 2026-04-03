// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_entities_asn_by_ip_response_result_asn_estimated_users_locations.dart';@immutable final class RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers {const RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers({required this.locations, this.estimatedUsers, });

factory RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers(
  estimatedUsers: json['estimatedUsers'] != null ? (json['estimatedUsers'] as num).toInt() : null,
  locations: (json['locations'] as List<dynamic>).map((e) => RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Total estimated users.
final int? estimatedUsers;

final List<RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations> locations;

Map<String, dynamic> toJson() { return {
  'estimatedUsers': ?estimatedUsers,
  'locations': locations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('locations'); } 
RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers copyWith({int Function()? estimatedUsers, List<RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations>? locations, }) { return RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers(
  estimatedUsers: estimatedUsers != null ? estimatedUsers() : this.estimatedUsers,
  locations: locations ?? this.locations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers &&
          estimatedUsers == other.estimatedUsers &&
          listEquals(locations, other.locations); } 
@override int get hashCode { return Object.hash(estimatedUsers, Object.hashAll(locations)); } 
@override String toString() { return 'RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsers(estimatedUsers: $estimatedUsers, locations: $locations)'; } 
 }
