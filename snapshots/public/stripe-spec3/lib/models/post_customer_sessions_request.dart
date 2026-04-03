// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customer_sessions_request_components.dart';@immutable final class PostCustomerSessionsRequest {const PostCustomerSessionsRequest({required this.components, this.customer, this.customerAccount, this.expand, });

factory PostCustomerSessionsRequest.fromJson(Map<String, dynamic> json) { return PostCustomerSessionsRequest(
  components: PostCustomerSessionsRequestComponents.fromJson(json['components'] as Map<String, dynamic>),
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Configuration for each component. At least 1 component must be enabled.
final PostCustomerSessionsRequestComponents components;

/// The ID of an existing customer for which to create the Customer Session.
final String? customer;

/// The ID of an existing Account for which to create the Customer Session.
final String? customerAccount;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'components': components.toJson(),
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('components'); } 
PostCustomerSessionsRequest copyWith({PostCustomerSessionsRequestComponents? components, String Function()? customer, String Function()? customerAccount, List<String> Function()? expand, }) { return PostCustomerSessionsRequest(
  components: components ?? this.components,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomerSessionsRequest &&
          components == other.components &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(components, customer, customerAccount, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostCustomerSessionsRequest(components: $components, customer: $customer, customerAccount: $customerAccount, expand: $expand)'; } 
 }
