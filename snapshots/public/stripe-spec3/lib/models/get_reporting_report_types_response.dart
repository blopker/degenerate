// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reporting_report_type.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class GetReportingReportTypesResponseObject {const GetReportingReportTypesResponseObject._(this.value);

factory GetReportingReportTypesResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetReportingReportTypesResponseObject._(json),
}; }

static const GetReportingReportTypesResponseObject list = GetReportingReportTypesResponseObject._('list');

static const List<GetReportingReportTypesResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetReportingReportTypesResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetReportingReportTypesResponseObject($value)'; } 
 }
/// 
final class GetReportingReportTypesResponse {const GetReportingReportTypesResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetReportingReportTypesResponse.fromJson(Map<String, dynamic> json) { return GetReportingReportTypesResponse(
  data: (json['data'] as List<dynamic>).map((e) => ReportingReportType.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetReportingReportTypesResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

final List<ReportingReportType> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetReportingReportTypesResponseObject object;

/// The URL where this list can be accessed.
final String url;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
  'has_more': hasMore,
  'object': object.toJson(),
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool &&
      json.containsKey('object') &&
      json.containsKey('url') && json['url'] is String; } 
GetReportingReportTypesResponse copyWith({List<ReportingReportType>? data, bool? hasMore, GetReportingReportTypesResponseObject? object, String? url, }) { return GetReportingReportTypesResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetReportingReportTypesResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetReportingReportTypesResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
