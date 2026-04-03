// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_cash_balance_transaction.dart';/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
@immutable final class GetCustomersCustomerCashBalanceTransactionsResponseObject {const GetCustomersCustomerCashBalanceTransactionsResponseObject._(this.value);

factory GetCustomersCustomerCashBalanceTransactionsResponseObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => GetCustomersCustomerCashBalanceTransactionsResponseObject._(json),
}; }

static const GetCustomersCustomerCashBalanceTransactionsResponseObject list = GetCustomersCustomerCashBalanceTransactionsResponseObject._('list');

static const List<GetCustomersCustomerCashBalanceTransactionsResponseObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCustomersCustomerCashBalanceTransactionsResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCustomersCustomerCashBalanceTransactionsResponseObject($value)'; } 
 }
/// Customers with certain payments enabled have a cash balance, representing funds that were paid
/// by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
/// represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
/// to payments, and refunds to the customer.
@immutable final class GetCustomersCustomerCashBalanceTransactionsResponse {const GetCustomersCustomerCashBalanceTransactionsResponse({required this.data, required this.hasMore, required this.object, required this.url, });

factory GetCustomersCustomerCashBalanceTransactionsResponse.fromJson(Map<String, dynamic> json) { return GetCustomersCustomerCashBalanceTransactionsResponse(
  data: (json['data'] as List<dynamic>).map((e) => CustomerCashBalanceTransaction.fromJson(e as Map<String, dynamic>)).toList(),
  hasMore: json['has_more'] as bool,
  object: GetCustomersCustomerCashBalanceTransactionsResponseObject.fromJson(json['object'] as String),
  url: json['url'] as String,
); }

/// Details about each object.
final List<CustomerCashBalanceTransaction> data;

/// True if this list has another page of items after this one that can be fetched.
final bool hasMore;

/// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
final GetCustomersCustomerCashBalanceTransactionsResponseObject object;

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
GetCustomersCustomerCashBalanceTransactionsResponse copyWith({List<CustomerCashBalanceTransaction>? data, bool? hasMore, GetCustomersCustomerCashBalanceTransactionsResponseObject? object, String? url, }) { return GetCustomersCustomerCashBalanceTransactionsResponse(
  data: data ?? this.data,
  hasMore: hasMore ?? this.hasMore,
  object: object ?? this.object,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCustomersCustomerCashBalanceTransactionsResponse &&
          listEquals(data, other.data) &&
          hasMore == other.hasMore &&
          object == other.object &&
          url == other.url; } 
@override int get hashCode { return Object.hash(Object.hashAll(data), hasMore, object, url); } 
@override String toString() { return 'GetCustomersCustomerCashBalanceTransactionsResponse(data: $data, hasMore: $hasMore, object: $object, url: $url)'; } 
 }
