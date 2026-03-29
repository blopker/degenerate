// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`. Use `string` if the item type is unknown or mixed.
final class PostRadarValueListsRequestItemType {const PostRadarValueListsRequestItemType._(this.value);

factory PostRadarValueListsRequestItemType.fromJson(String json) { return switch (json) {
  'card_bin' => cardBin,
  'card_fingerprint' => cardFingerprint,
  'case_sensitive_string' => caseSensitiveString,
  'country' => country,
  'customer_id' => customerId,
  'email' => email,
  'ip_address' => ipAddress,
  'sepa_debit_fingerprint' => sepaDebitFingerprint,
  'string' => string,
  'us_bank_account_fingerprint' => usBankAccountFingerprint,
  _ => PostRadarValueListsRequestItemType._(json),
}; }

static const PostRadarValueListsRequestItemType cardBin = PostRadarValueListsRequestItemType._('card_bin');

static const PostRadarValueListsRequestItemType cardFingerprint = PostRadarValueListsRequestItemType._('card_fingerprint');

static const PostRadarValueListsRequestItemType caseSensitiveString = PostRadarValueListsRequestItemType._('case_sensitive_string');

static const PostRadarValueListsRequestItemType country = PostRadarValueListsRequestItemType._('country');

static const PostRadarValueListsRequestItemType customerId = PostRadarValueListsRequestItemType._('customer_id');

static const PostRadarValueListsRequestItemType email = PostRadarValueListsRequestItemType._('email');

static const PostRadarValueListsRequestItemType ipAddress = PostRadarValueListsRequestItemType._('ip_address');

static const PostRadarValueListsRequestItemType sepaDebitFingerprint = PostRadarValueListsRequestItemType._('sepa_debit_fingerprint');

static const PostRadarValueListsRequestItemType string = PostRadarValueListsRequestItemType._('string');

static const PostRadarValueListsRequestItemType usBankAccountFingerprint = PostRadarValueListsRequestItemType._('us_bank_account_fingerprint');

static const List<PostRadarValueListsRequestItemType> values = [cardBin, cardFingerprint, caseSensitiveString, country, customerId, email, ipAddress, sepaDebitFingerprint, string, usBankAccountFingerprint];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostRadarValueListsRequestItemType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostRadarValueListsRequestItemType($value)'; } 
 }
final class PostRadarValueListsRequest {const PostRadarValueListsRequest({required this.alias, this.expand, this.itemType, this.metadata, required this.name, });

factory PostRadarValueListsRequest.fromJson(Map<String, dynamic> json) { return PostRadarValueListsRequest(
  alias: json['alias'] as String,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  itemType: json['item_type'] != null ? PostRadarValueListsRequestItemType.fromJson(json['item_type'] as String) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String,
); }

/// The name of the value list for use in rules.
final String alias;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`. Use `string` if the item type is unknown or mixed.
final PostRadarValueListsRequestItemType? itemType;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The human-readable name of the value list.
final String name;

Map<String, dynamic> toJson() { return {
  'alias': alias,
  'expand': ?expand,
  if (itemType != null) 'item_type': itemType?.toJson(),
  'metadata': ?metadata,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('alias') && json['alias'] is String &&
      json.containsKey('name') && json['name'] is String; } 
PostRadarValueListsRequest copyWith({String? alias, List<String> Function()? expand, PostRadarValueListsRequestItemType Function()? itemType, Map<String, String> Function()? metadata, String? name, }) { return PostRadarValueListsRequest(
  alias: alias ?? this.alias,
  expand: expand != null ? expand() : this.expand,
  itemType: itemType != null ? itemType() : this.itemType,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostRadarValueListsRequest &&
          alias == other.alias &&
          listEquals(expand, other.expand) &&
          itemType == other.itemType &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(alias, Object.hashAll(expand ?? const []), itemType, metadata, name); } 
@override String toString() { return 'PostRadarValueListsRequest(alias: $alias, expand: $expand, itemType: $itemType, metadata: $metadata, name: $name)'; } 
 }
