// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_traffic_anomalies_response_result_traffic_anomalies_asn_details.dart';import 'radar_get_traffic_anomalies_response_result_traffic_anomalies_location_details.dart';import 'radar_get_traffic_anomalies_response_result_traffic_anomalies_origin_details.dart';@immutable final class RadarGetTrafficAnomaliesResponseResultTrafficAnomalies {const RadarGetTrafficAnomaliesResponseResultTrafficAnomalies({required this.startDate, required this.status, required this.type, required this.uuid, this.asnDetails, this.endDate, this.locationDetails, this.originDetails, this.visibleInDataSources, });

factory RadarGetTrafficAnomaliesResponseResultTrafficAnomalies.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesResponseResultTrafficAnomalies(
  asnDetails: json['asnDetails'] != null ? RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails.fromJson(json['asnDetails'] as Map<String, dynamic>) : null,
  endDate: json['endDate'] != null ? DateTime.parse(json['endDate'] as String) : null,
  locationDetails: json['locationDetails'] != null ? RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesLocationDetails.fromJson(json['locationDetails'] as Map<String, dynamic>) : null,
  originDetails: json['originDetails'] != null ? RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesOriginDetails.fromJson(json['originDetails'] as Map<String, dynamic>) : null,
  startDate: json['startDate'] as String,
  status: json['status'] as String,
  type: json['type'] as String,
  uuid: json['uuid'] as String,
  visibleInDataSources: (json['visibleInDataSources'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails? asnDetails;

final DateTime? endDate;

final RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesLocationDetails? locationDetails;

final RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesOriginDetails? originDetails;

final String startDate;

final String status;

final String type;

final String uuid;

final List<String>? visibleInDataSources;

Map<String, dynamic> toJson() { return {
  if (asnDetails != null) 'asnDetails': asnDetails?.toJson(),
  if (endDate != null) 'endDate': endDate?.toIso8601String(),
  if (locationDetails != null) 'locationDetails': locationDetails?.toJson(),
  if (originDetails != null) 'originDetails': originDetails?.toJson(),
  'startDate': startDate,
  'status': status,
  'type': type,
  'uuid': uuid,
  'visibleInDataSources': ?visibleInDataSources,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('startDate') && json['startDate'] is String &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('uuid') && json['uuid'] is String; } 
RadarGetTrafficAnomaliesResponseResultTrafficAnomalies copyWith({RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesAsnDetails Function()? asnDetails, DateTime Function()? endDate, RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesLocationDetails Function()? locationDetails, RadarGetTrafficAnomaliesResponseResultTrafficAnomaliesOriginDetails Function()? originDetails, String? startDate, String? status, String? type, String? uuid, List<String> Function()? visibleInDataSources, }) { return RadarGetTrafficAnomaliesResponseResultTrafficAnomalies(
  asnDetails: asnDetails != null ? asnDetails() : this.asnDetails,
  endDate: endDate != null ? endDate() : this.endDate,
  locationDetails: locationDetails != null ? locationDetails() : this.locationDetails,
  originDetails: originDetails != null ? originDetails() : this.originDetails,
  startDate: startDate ?? this.startDate,
  status: status ?? this.status,
  type: type ?? this.type,
  uuid: uuid ?? this.uuid,
  visibleInDataSources: visibleInDataSources != null ? visibleInDataSources() : this.visibleInDataSources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesResponseResultTrafficAnomalies &&
          asnDetails == other.asnDetails &&
          endDate == other.endDate &&
          locationDetails == other.locationDetails &&
          originDetails == other.originDetails &&
          startDate == other.startDate &&
          status == other.status &&
          type == other.type &&
          uuid == other.uuid &&
          listEquals(visibleInDataSources, other.visibleInDataSources); } 
@override int get hashCode { return Object.hash(asnDetails, endDate, locationDetails, originDetails, startDate, status, type, uuid, Object.hashAll(visibleInDataSources ?? const [])); } 
@override String toString() { return 'RadarGetTrafficAnomaliesResponseResultTrafficAnomalies(asnDetails: $asnDetails, endDate: $endDate, locationDetails: $locationDetails, originDetails: $originDetails, startDate: $startDate, status: $status, type: $type, uuid: $uuid, visibleInDataSources: $visibleInDataSources)'; } 
 }
