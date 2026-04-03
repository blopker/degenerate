// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations {const RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations({required this.locationAlpha2, required this.locationName, this.estimatedUsers, });

factory RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations(
  estimatedUsers: json['estimatedUsers'] != null ? (json['estimatedUsers'] as num).toInt() : null,
  locationAlpha2: json['locationAlpha2'] as String,
  locationName: json['locationName'] as String,
); }

/// Estimated users per location.
final int? estimatedUsers;

final String locationAlpha2;

final String locationName;

Map<String, dynamic> toJson() { return {
  'estimatedUsers': ?estimatedUsers,
  'locationAlpha2': locationAlpha2,
  'locationName': locationName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('locationAlpha2') && json['locationAlpha2'] is String &&
      json.containsKey('locationName') && json['locationName'] is String; } 
RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations copyWith({int Function()? estimatedUsers, String? locationAlpha2, String? locationName, }) { return RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations(
  estimatedUsers: estimatedUsers != null ? estimatedUsers() : this.estimatedUsers,
  locationAlpha2: locationAlpha2 ?? this.locationAlpha2,
  locationName: locationName ?? this.locationName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations &&
          estimatedUsers == other.estimatedUsers &&
          locationAlpha2 == other.locationAlpha2 &&
          locationName == other.locationName; } 
@override int get hashCode { return Object.hash(estimatedUsers, locationAlpha2, locationName); } 
@override String toString() { return 'RadarGetEntitiesAsnByIpResponseResultAsnEstimatedUsersLocations(estimatedUsers: $estimatedUsers, locationAlpha2: $locationAlpha2, locationName: $locationName)'; } 
 }
