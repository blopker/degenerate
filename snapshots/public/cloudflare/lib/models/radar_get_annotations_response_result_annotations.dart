// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_annotations_response_result_annotations_asns_details.dart';import 'radar_get_annotations_response_result_annotations_locations_details.dart';import 'radar_get_annotations_response_result_annotations_origins_details.dart';import 'radar_get_annotations_response_result_annotations_outage.dart';@immutable final class RadarGetAnnotationsResponseResultAnnotations {const RadarGetAnnotationsResponseResultAnnotations({required this.asns, required this.asnsDetails, required this.dataSource, required this.eventType, required this.id, required this.locations, required this.locationsDetails, required this.origins, required this.originsDetails, required this.outage, required this.startDate, this.description, this.endDate, this.linkedUrl, this.scope, });

factory RadarGetAnnotationsResponseResultAnnotations.fromJson(Map<String, dynamic> json) { return RadarGetAnnotationsResponseResultAnnotations(
  asns: (json['asns'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
  asnsDetails: (json['asnsDetails'] as List<dynamic>).map((e) => RadarGetAnnotationsResponseResultAnnotationsAsnsDetails.fromJson(e as Map<String, dynamic>)).toList(),
  dataSource: json['dataSource'] as String,
  description: json['description'] as String?,
  endDate: json['endDate'] as String?,
  eventType: json['eventType'] as String,
  id: json['id'] as String,
  linkedUrl: json['linkedUrl'] as String?,
  locations: (json['locations'] as List<dynamic>).map((e) => e as String).toList(),
  locationsDetails: (json['locationsDetails'] as List<dynamic>).map((e) => RadarGetAnnotationsResponseResultAnnotationsLocationsDetails.fromJson(e as Map<String, dynamic>)).toList(),
  origins: (json['origins'] as List<dynamic>).map((e) => e as String).toList(),
  originsDetails: (json['originsDetails'] as List<dynamic>).map((e) => RadarGetAnnotationsResponseResultAnnotationsOriginsDetails.fromJson(e as Map<String, dynamic>)).toList(),
  outage: RadarGetAnnotationsResponseResultAnnotationsOutage.fromJson(json['outage'] as Map<String, dynamic>),
  scope: json['scope'] as String?,
  startDate: json['startDate'] as String,
); }

final List<int> asns;

final List<RadarGetAnnotationsResponseResultAnnotationsAsnsDetails> asnsDetails;

final String dataSource;

final String? description;

final String? endDate;

final String eventType;

final String id;

final String? linkedUrl;

final List<String> locations;

final List<RadarGetAnnotationsResponseResultAnnotationsLocationsDetails> locationsDetails;

final List<String> origins;

final List<RadarGetAnnotationsResponseResultAnnotationsOriginsDetails> originsDetails;

final RadarGetAnnotationsResponseResultAnnotationsOutage outage;

final String? scope;

final String startDate;

Map<String, dynamic> toJson() { return {
  'asns': asns,
  'asnsDetails': asnsDetails.map((e) => e.toJson()).toList(),
  'dataSource': dataSource,
  'description': ?description,
  'endDate': ?endDate,
  'eventType': eventType,
  'id': id,
  'linkedUrl': ?linkedUrl,
  'locations': locations,
  'locationsDetails': locationsDetails.map((e) => e.toJson()).toList(),
  'origins': origins,
  'originsDetails': originsDetails.map((e) => e.toJson()).toList(),
  'outage': outage.toJson(),
  'scope': ?scope,
  'startDate': startDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asns') &&
      json.containsKey('asnsDetails') &&
      json.containsKey('dataSource') && json['dataSource'] is String &&
      json.containsKey('eventType') && json['eventType'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('locations') &&
      json.containsKey('locationsDetails') &&
      json.containsKey('origins') &&
      json.containsKey('originsDetails') &&
      json.containsKey('outage') &&
      json.containsKey('startDate') && json['startDate'] is String; } 
RadarGetAnnotationsResponseResultAnnotations copyWith({List<int>? asns, List<RadarGetAnnotationsResponseResultAnnotationsAsnsDetails>? asnsDetails, String? dataSource, String Function()? description, String Function()? endDate, String? eventType, String? id, String Function()? linkedUrl, List<String>? locations, List<RadarGetAnnotationsResponseResultAnnotationsLocationsDetails>? locationsDetails, List<String>? origins, List<RadarGetAnnotationsResponseResultAnnotationsOriginsDetails>? originsDetails, RadarGetAnnotationsResponseResultAnnotationsOutage? outage, String Function()? scope, String? startDate, }) { return RadarGetAnnotationsResponseResultAnnotations(
  asns: asns ?? this.asns,
  asnsDetails: asnsDetails ?? this.asnsDetails,
  dataSource: dataSource ?? this.dataSource,
  description: description != null ? description() : this.description,
  endDate: endDate != null ? endDate() : this.endDate,
  eventType: eventType ?? this.eventType,
  id: id ?? this.id,
  linkedUrl: linkedUrl != null ? linkedUrl() : this.linkedUrl,
  locations: locations ?? this.locations,
  locationsDetails: locationsDetails ?? this.locationsDetails,
  origins: origins ?? this.origins,
  originsDetails: originsDetails ?? this.originsDetails,
  outage: outage ?? this.outage,
  scope: scope != null ? scope() : this.scope,
  startDate: startDate ?? this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAnnotationsResponseResultAnnotations &&
          listEquals(asns, other.asns) &&
          listEquals(asnsDetails, other.asnsDetails) &&
          dataSource == other.dataSource &&
          description == other.description &&
          endDate == other.endDate &&
          eventType == other.eventType &&
          id == other.id &&
          linkedUrl == other.linkedUrl &&
          listEquals(locations, other.locations) &&
          listEquals(locationsDetails, other.locationsDetails) &&
          listEquals(origins, other.origins) &&
          listEquals(originsDetails, other.originsDetails) &&
          outage == other.outage &&
          scope == other.scope &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(Object.hashAll(asns), Object.hashAll(asnsDetails), dataSource, description, endDate, eventType, id, linkedUrl, Object.hashAll(locations), Object.hashAll(locationsDetails), Object.hashAll(origins), Object.hashAll(originsDetails), outage, scope, startDate); } 
@override String toString() { return 'RadarGetAnnotationsResponseResultAnnotations(asns: $asns, asnsDetails: $asnsDetails, dataSource: $dataSource, description: $description, endDate: $endDate, eventType: $eventType, id: $id, linkedUrl: $linkedUrl, locations: $locations, locationsDetails: $locationsDetails, origins: $origins, originsDetails: $originsDetails, outage: $outage, scope: $scope, startDate: $startDate)'; } 
 }
