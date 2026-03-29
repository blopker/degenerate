// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'forwarding_request.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class GetForwardingRequestsResponseObject {const GetForwardingRequestsResponseObject._(this.value);

factory GetForwardingRequestsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetForwardingRequestsResponseObject._(json),
}; }

static const GetForwardingRequestsResponseObject list = GetForwardingRequestsResponseObject._('list');

static const List<GetForwardingRequestsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetForwardingRequestsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetForwardingRequestsResponseObject($value)'; } 
 }
/// List of ForwardingRequest data.
final class GetForwardingRequestsResponse {const GetForwardingRequestsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetForwardingRequestsResponse.fromJson(Map<String, dynamic> json) { return GetForwardingRequestsResponse(
  data: (json['data'] as List<dynamic>).map((e) => ForwardingRequest.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetForwardingRequestsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

final List<ForwardingRequest> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetForwardingRequestsResponseObject object;

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
GetForwardingRequestsResponse copyWith({List<ForwardingRequest>? data, bool? hasMore, GetForwardingRequestsResponseObject? object, String? url, }) { return GetForwardingRequestsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetForwardingRequestsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetForwardingRequestsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
