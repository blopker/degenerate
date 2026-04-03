// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_early_fraud_warning.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
@immutable final class GetRadarEarlyFraudWarningsResponseObject {const GetRadarEarlyFraudWarningsResponseObject._(this.value);

factory GetRadarEarlyFraudWarningsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetRadarEarlyFraudWarningsResponseObject._(json),
}; }

static const GetRadarEarlyFraudWarningsResponseObject list = GetRadarEarlyFraudWarningsResponseObject._('list');

static const List<GetRadarEarlyFraudWarningsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetRadarEarlyFraudWarningsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetRadarEarlyFraudWarningsResponseObject($value)'; } 
 }
/// 
@immutable final class GetRadarEarlyFraudWarningsResponse {const GetRadarEarlyFraudWarningsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetRadarEarlyFraudWarningsResponse.fromJson(Map<String, dynamic> json) { return GetRadarEarlyFraudWarningsResponse(
  data: (json['data'] as List<dynamic>).map((e) => RadarEarlyFraudWarning.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetRadarEarlyFraudWarningsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

final List<RadarEarlyFraudWarning> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetRadarEarlyFraudWarningsResponseObject object;

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
GetRadarEarlyFraudWarningsResponse copyWith({List<RadarEarlyFraudWarning>? data, bool? hasMore, GetRadarEarlyFraudWarningsResponseObject? object, String? url, }) { return GetRadarEarlyFraudWarningsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetRadarEarlyFraudWarningsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetRadarEarlyFraudWarningsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
