// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_configuration.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class GetTerminalConfigurationsResponseObject {const GetTerminalConfigurationsResponseObject._(this.value);

factory GetTerminalConfigurationsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetTerminalConfigurationsResponseObject._(json),
}; }

static const GetTerminalConfigurationsResponseObject list = GetTerminalConfigurationsResponseObject._('list');

static const List<GetTerminalConfigurationsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTerminalConfigurationsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTerminalConfigurationsResponseObject($value)'; } 
 }
/// 
final class GetTerminalConfigurationsResponse {const GetTerminalConfigurationsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetTerminalConfigurationsResponse.fromJson(Map<String, dynamic> json) { return GetTerminalConfigurationsResponse(
  data: (json['data'] as List<dynamic>).map((e) => TerminalConfiguration.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetTerminalConfigurationsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

final List<TerminalConfiguration> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetTerminalConfigurationsResponseObject object;

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
GetTerminalConfigurationsResponse copyWith({List<TerminalConfiguration>? data, bool? hasMore, GetTerminalConfigurationsResponseObject? object, String? url, }) { return GetTerminalConfigurationsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTerminalConfigurationsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetTerminalConfigurationsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
