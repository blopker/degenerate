// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class GetBalanceTransactionsResponseObject {const GetBalanceTransactionsResponseObject._(this.value);

factory GetBalanceTransactionsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetBalanceTransactionsResponseObject._(json),
}; }

static const GetBalanceTransactionsResponseObject list = GetBalanceTransactionsResponseObject._('list');

static const List<GetBalanceTransactionsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetBalanceTransactionsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetBalanceTransactionsResponseObject($value)'; } 
 }
/// 
final class GetBalanceTransactionsResponse {const GetBalanceTransactionsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetBalanceTransactionsResponse.fromJson(Map<String, dynamic> json) { return GetBalanceTransactionsResponse(
  data: (json['data'] as List<dynamic>).map((e) => BalanceTransaction.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetBalanceTransactionsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

final List<BalanceTransaction> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetBalanceTransactionsResponseObject object;

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
GetBalanceTransactionsResponse copyWith({List<BalanceTransaction>? data, bool? hasMore, GetBalanceTransactionsResponseObject? object, String? url, }) { return GetBalanceTransactionsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetBalanceTransactionsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetBalanceTransactionsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
