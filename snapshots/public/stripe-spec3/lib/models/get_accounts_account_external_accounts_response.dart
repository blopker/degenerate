// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bank_account.dart';import 'card.dart';import 'get_accounts_account_external_accounts_response_data.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
@immutable final class GetAccountsAccountExternalAccountsResponseObject {const GetAccountsAccountExternalAccountsResponseObject._(this.value);

factory GetAccountsAccountExternalAccountsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetAccountsAccountExternalAccountsResponseObject._(json),
}; }

static const GetAccountsAccountExternalAccountsResponseObject list = GetAccountsAccountExternalAccountsResponseObject._('list');

static const List<GetAccountsAccountExternalAccountsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAccountsAccountExternalAccountsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAccountsAccountExternalAccountsResponseObject($value)'; } 
 }
/// 
@immutable final class GetAccountsAccountExternalAccountsResponse {const GetAccountsAccountExternalAccountsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetAccountsAccountExternalAccountsResponse.fromJson(Map<String, dynamic> json) { return GetAccountsAccountExternalAccountsResponse(
  data: (json['data'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => BankAccount.fromJson(v as Map<String, dynamic>), fromB: (v) => Card.fromJson(v as Map<String, dynamic>),)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetAccountsAccountExternalAccountsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

/// The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
final List<GetAccountsAccountExternalAccountsResponseData> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetAccountsAccountExternalAccountsResponseObject object;

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
GetAccountsAccountExternalAccountsResponse copyWith({List<GetAccountsAccountExternalAccountsResponseData>? data, bool? hasMore, GetAccountsAccountExternalAccountsResponseObject? object, String? url, }) { return GetAccountsAccountExternalAccountsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAccountsAccountExternalAccountsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetAccountsAccountExternalAccountsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
