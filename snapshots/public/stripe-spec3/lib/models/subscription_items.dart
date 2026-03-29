// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_item.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class SubscriptionItemsObject {const SubscriptionItemsObject._(this.value);

factory SubscriptionItemsObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => SubscriptionItemsObject._(json),
}; }

static const SubscriptionItemsObject list = SubscriptionItemsObject._('list');

static const List<SubscriptionItemsObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionItemsObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionItemsObject($value)'; } 
 }
/// List of subscription items, each with an attached price.
final class SubscriptionItems {const SubscriptionItems({required this.data, required this.hasMore, required this.object, required this.url, });

factory SubscriptionItems.fromJson(Map<String, dynamic> json) { return SubscriptionItems(
  data: (json['data'] as List<dynamic>).map((e) => SubscriptionItem.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: SubscriptionItemsObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

/// Details about each object.
final List<SubscriptionItem> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final SubscriptionItemsObject object;

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
SubscriptionItems copyWith({List<SubscriptionItem>? data, bool? hasMore, SubscriptionItemsObject? object, String? url, }) { return SubscriptionItems(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionItems &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'SubscriptionItems(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
