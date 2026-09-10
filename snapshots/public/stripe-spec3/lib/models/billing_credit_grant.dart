// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_credit_grant_customer.dart';import 'billing_credit_grant_test_clock.dart';import 'billing_credit_grants_resource_amount.dart';import 'billing_credit_grants_resource_applicability_config.dart';import 'customer.dart';import 'deleted_customer.dart';import 'test_helpers_test_clock.dart';/// The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
@immutable final class BillingCreditGrantCategory {const BillingCreditGrantCategory._(this.value);

factory BillingCreditGrantCategory.fromJson(String json) { return switch (json) {
  'paid' => paid,
  'promotional' => promotional,
  _ => BillingCreditGrantCategory._(json),
}; }

static const BillingCreditGrantCategory paid = BillingCreditGrantCategory._('paid');

static const BillingCreditGrantCategory promotional = BillingCreditGrantCategory._('promotional');

static const List<BillingCreditGrantCategory> values = [paid, promotional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingCreditGrantCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingCreditGrantCategory($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class BillingCreditGrantObject {const BillingCreditGrantObject._(this.value);

factory BillingCreditGrantObject.fromJson(String json) { return switch (json) {
  'billing.credit_grant' => billingCreditGrant,
  _ => BillingCreditGrantObject._(json),
}; }

static const BillingCreditGrantObject billingCreditGrant = BillingCreditGrantObject._('billing.credit_grant');

static const List<BillingCreditGrantObject> values = [billingCreditGrant];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingCreditGrantObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingCreditGrantObject($value)'; } 
 }
/// A credit grant is an API resource that documents the allocation of some billing credits to a customer.
/// 
/// Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
@immutable final class BillingCreditGrant {const BillingCreditGrant({required this.amount, required this.applicabilityConfig, required this.category, required this.created, required this.customer, required this.id, required this.livemode, required this.metadata, required this.object, required this.updated, this.customerAccount = const Omittable.absent(), this.effectiveAt = const Omittable.absent(), this.expiresAt = const Omittable.absent(), this.name = const Omittable.absent(), this.priority = const Omittable.absent(), this.testClock = const Omittable.absent(), this.voidedAt = const Omittable.absent(), });

factory BillingCreditGrant.fromJson(Map<String, dynamic> json) { return BillingCreditGrant(
  amount: BillingCreditGrantsResourceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  applicabilityConfig: BillingCreditGrantsResourceApplicabilityConfig.fromJson(json['applicability_config'] as Map<String, dynamic>),
  category: BillingCreditGrantCategory.fromJson(json['category'] as String),
  created: (json['created'] as num).toInt(),
  customer: OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),),
  customerAccount: json.containsKey('customer_account') ? Omittable(json['customer_account'] as String?) : const Omittable.absent(),
  effectiveAt: json.containsKey('effective_at') ? Omittable(json['effective_at'] != null ? (json['effective_at'] as num).toInt() : null) : const Omittable.absent(),
  expiresAt: json.containsKey('expires_at') ? Omittable(json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  object: BillingCreditGrantObject.fromJson(json['object'] as String),
  priority: json.containsKey('priority') ? Omittable(json['priority'] != null ? (json['priority'] as num).toInt() : null) : const Omittable.absent(),
  testClock: json.containsKey('test_clock') ? Omittable(json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  updated: (json['updated'] as num).toInt(),
  voidedAt: json.containsKey('voided_at') ? Omittable(json['voided_at'] != null ? (json['voided_at'] as num).toInt() : null) : const Omittable.absent(),
); }

final BillingCreditGrantsResourceAmount amount;

final BillingCreditGrantsResourceApplicabilityConfig applicabilityConfig;

/// The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
final BillingCreditGrantCategory category;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// ID of the customer receiving the billing credits.
final BillingCreditGrantCustomer customer;

/// ID of the account representing the customer receiving the billing credits
final Omittable<String?> customerAccount;

/// The time when the billing credits become effective-when they're eligible for use.
final Omittable<int?> effectiveAt;

/// The time when the billing credits expire. If not present, the billing credits don't expire.
final Omittable<int?> expiresAt;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// A descriptive name shown in dashboard.
final Omittable<String?> name;

/// String representing the object's type. Objects of the same type share the same value.
final BillingCreditGrantObject object;

/// The priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
final Omittable<int?> priority;

/// ID of the test clock this credit grant belongs to.
final Omittable<BillingCreditGrantTestClock?> testClock;

/// Time at which the object was last updated. Measured in seconds since the Unix epoch.
final int updated;

/// The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
final Omittable<int?> voidedAt;

Map<String, dynamic> toJson() { return {
  'amount': amount.toJson(),
  'applicability_config': applicabilityConfig.toJson(),
  'category': category.toJson(),
  'created': created,
  'customer': customer.toJson(),
  if (customerAccount.isPresent) 'customer_account': customerAccount.value,
  if (effectiveAt.isPresent) 'effective_at': effectiveAt.value,
  if (expiresAt.isPresent) 'expires_at': expiresAt.value,
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  if (name.isPresent) 'name': name.value,
  'object': object.toJson(),
  if (priority.isPresent) 'priority': priority.value,
  if (testClock.isPresent) 'test_clock': testClock.value?.toJson(),
  'updated': updated,
  if (voidedAt.isPresent) 'voided_at': voidedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') &&
      json.containsKey('applicability_config') &&
      json.containsKey('category') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('customer') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('updated') && json['updated'] is num; } 
BillingCreditGrant copyWith({BillingCreditGrantsResourceAmount? amount, BillingCreditGrantsResourceApplicabilityConfig? applicabilityConfig, BillingCreditGrantCategory? category, int? created, BillingCreditGrantCustomer? customer, Omittable<String?>? customerAccount, Omittable<int?>? effectiveAt, Omittable<int?>? expiresAt, String? id, bool? livemode, Map<String,String>? metadata, Omittable<String?>? name, BillingCreditGrantObject? object, Omittable<int?>? priority, Omittable<BillingCreditGrantTestClock?>? testClock, int? updated, Omittable<int?>? voidedAt, }) { return BillingCreditGrant(
  amount: amount ?? this.amount,
  applicabilityConfig: applicabilityConfig ?? this.applicabilityConfig,
  category: category ?? this.category,
  created: created ?? this.created,
  customer: customer ?? this.customer,
  customerAccount: customerAccount ?? this.customerAccount,
  effectiveAt: effectiveAt ?? this.effectiveAt,
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
  object: object ?? this.object,
  priority: priority ?? this.priority,
  testClock: testClock ?? this.testClock,
  updated: updated ?? this.updated,
  voidedAt: voidedAt ?? this.voidedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingCreditGrant &&
          amount == other.amount &&
          applicabilityConfig == other.applicabilityConfig &&
          category == other.category &&
          created == other.created &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          effectiveAt == other.effectiveAt &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          name == other.name &&
          object == other.object &&
          priority == other.priority &&
          testClock == other.testClock &&
          updated == other.updated &&
          voidedAt == other.voidedAt; } 
@override int get hashCode { return Object.hash(amount, applicabilityConfig, category, created, customer, customerAccount, effectiveAt, expiresAt, id, livemode, metadata, name, object, priority, testClock, updated, voidedAt); } 
@override String toString() { return 'BillingCreditGrant(amount: $amount, applicabilityConfig: $applicabilityConfig, category: $category, created: $created, customer: $customer, customerAccount: $customerAccount, effectiveAt: $effectiveAt, expiresAt: $expiresAt, id: $id, livemode: $livemode, metadata: $metadata, name: $name, object: $object, priority: $priority, testClock: $testClock, updated: $updated, voidedAt: $voidedAt)'; } 
 }
