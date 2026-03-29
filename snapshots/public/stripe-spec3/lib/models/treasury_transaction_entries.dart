// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_transaction_entry.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final class TreasuryTransactionEntriesObject {const TreasuryTransactionEntriesObject._(this.value);

factory TreasuryTransactionEntriesObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => TreasuryTransactionEntriesObject._(json),
}; }

static const TreasuryTransactionEntriesObject list = TreasuryTransactionEntriesObject._('list');

static const List<TreasuryTransactionEntriesObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryTransactionEntriesObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryTransactionEntriesObject($value)'; } 
 }
/// A list of TransactionEntries that are part of this Transaction. This cannot be expanded in any list endpoints.
final class TreasuryTransactionEntries {const TreasuryTransactionEntries({required this.data, required this.hasMore, required this.object, required this.url, });

factory TreasuryTransactionEntries.fromJson(Map<String, dynamic> json) { return TreasuryTransactionEntries(
  data: (json['data'] as List<dynamic>).map((e) => TreasuryTransactionEntry.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: TreasuryTransactionEntriesObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

/// Details about each object.
final List<TreasuryTransactionEntry> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final TreasuryTransactionEntriesObject object;

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
TreasuryTransactionEntries copyWith({List<TreasuryTransactionEntry>? data, bool? hasMore, TreasuryTransactionEntriesObject? object, String? url, }) { return TreasuryTransactionEntries(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryTransactionEntries &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'TreasuryTransactionEntries(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
