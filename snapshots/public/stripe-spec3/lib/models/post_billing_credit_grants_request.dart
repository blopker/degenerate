// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_credit_grants_request_amount.dart';import 'post_billing_credit_grants_request_applicability_config.dart';/// The category of this credit grant. It defaults to `paid` if not specified.
@immutable final class PostBillingCreditGrantsRequestCategory {const PostBillingCreditGrantsRequestCategory._(this.value);

factory PostBillingCreditGrantsRequestCategory.fromJson(String json) { return switch (json) {
  'paid' => paid,
  'promotional' => promotional,
  _ => PostBillingCreditGrantsRequestCategory._(json),
}; }

static const PostBillingCreditGrantsRequestCategory paid = PostBillingCreditGrantsRequestCategory._('paid');

static const PostBillingCreditGrantsRequestCategory promotional = PostBillingCreditGrantsRequestCategory._('promotional');

static const List<PostBillingCreditGrantsRequestCategory> values = [paid, promotional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBillingCreditGrantsRequestCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBillingCreditGrantsRequestCategory($value)'; } 
 }
@immutable final class PostBillingCreditGrantsRequest {const PostBillingCreditGrantsRequest({required this.amount, required this.applicabilityConfig, this.category, this.customer, this.customerAccount, this.effectiveAt, this.expand, this.expiresAt, this.metadata, this.name, this.priority, });

factory PostBillingCreditGrantsRequest.fromJson(Map<String, dynamic> json) { return PostBillingCreditGrantsRequest(
  amount: PostBillingCreditGrantsRequestAmount.fromJson(json['amount'] as Map<String, dynamic>),
  applicabilityConfig: PostBillingCreditGrantsRequestApplicabilityConfig.fromJson(json['applicability_config'] as Map<String, dynamic>),
  category: json['category'] != null ? PostBillingCreditGrantsRequestCategory.fromJson(json['category'] as String) : null,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  effectiveAt: json['effective_at'] != null ? (json['effective_at'] as num).toInt() : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] as String?,
  priority: json['priority'] != null ? (json['priority'] as num).toInt() : null,
); }

/// Amount of this credit grant.
final PostBillingCreditGrantsRequestAmount amount;

/// Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
final PostBillingCreditGrantsRequestApplicabilityConfig applicabilityConfig;

/// The category of this credit grant. It defaults to `paid` if not specified.
final PostBillingCreditGrantsRequestCategory? category;

/// ID of the customer receiving the billing credits.
final String? customer;

/// ID of the account representing the customer receiving the billing credits.
final String? customerAccount;

/// The time when the billing credits become effective-when they're eligible for use. It defaults to the current timestamp if not specified.
final int? effectiveAt;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The time when the billing credits expire. If not specified, the billing credits don't expire.
final int? expiresAt;

/// Set of key-value pairs that you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
final Map<String,String>? metadata;

/// A descriptive name shown in the Dashboard.
final String? name;

/// The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
final int? priority;

Map<String, dynamic> toJson() { return {
  'amount': amount.toJson(),
  'applicability_config': applicabilityConfig.toJson(),
  if (category != null) 'category': category?.toJson(),
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'effective_at': ?effectiveAt,
  'expand': ?expand,
  'expires_at': ?expiresAt,
  'metadata': ?metadata,
  'name': ?name,
  'priority': ?priority,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') &&
      json.containsKey('applicability_config'); } 
PostBillingCreditGrantsRequest copyWith({PostBillingCreditGrantsRequestAmount? amount, PostBillingCreditGrantsRequestApplicabilityConfig? applicabilityConfig, PostBillingCreditGrantsRequestCategory Function()? category, String Function()? customer, String Function()? customerAccount, int Function()? effectiveAt, List<String> Function()? expand, int Function()? expiresAt, Map<String, String> Function()? metadata, String Function()? name, int Function()? priority, }) { return PostBillingCreditGrantsRequest(
  amount: amount ?? this.amount,
  applicabilityConfig: applicabilityConfig ?? this.applicabilityConfig,
  category: category != null ? category() : this.category,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  effectiveAt: effectiveAt != null ? effectiveAt() : this.effectiveAt,
  expand: expand != null ? expand() : this.expand,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
  priority: priority != null ? priority() : this.priority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingCreditGrantsRequest &&
          amount == other.amount &&
          applicabilityConfig == other.applicabilityConfig &&
          category == other.category &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          effectiveAt == other.effectiveAt &&
          listEquals(expand, other.expand) &&
          expiresAt == other.expiresAt &&
          metadata == other.metadata &&
          name == other.name &&
          priority == other.priority; } 
@override int get hashCode { return Object.hash(amount, applicabilityConfig, category, customer, customerAccount, effectiveAt, Object.hashAll(expand ?? const []), expiresAt, metadata, name, priority); } 
@override String toString() { return 'PostBillingCreditGrantsRequest(amount: $amount, applicabilityConfig: $applicabilityConfig, category: $category, customer: $customer, customerAccount: $customerAccount, effectiveAt: $effectiveAt, expand: $expand, expiresAt: $expiresAt, metadata: $metadata, name: $name, priority: $priority)'; } 
 }
