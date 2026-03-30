// GENERATED CODE - DO NOT MODIFY BY HAND

/// Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
/// 
/// Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
/// 
/// Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).
/// 
/// Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
final class DeleteSubscriptionItemsItemRequestPaymentBehavior {const DeleteSubscriptionItemsItemRequestPaymentBehavior._(this.value);

factory DeleteSubscriptionItemsItemRequestPaymentBehavior.fromJson(String json) { return switch (json) {
  'allow_incomplete' => allowIncomplete,
  'default_incomplete' => defaultIncomplete,
  'error_if_incomplete' => errorIfIncomplete,
  'pending_if_incomplete' => pendingIfIncomplete,
  _ => DeleteSubscriptionItemsItemRequestPaymentBehavior._(json),
}; }

static const DeleteSubscriptionItemsItemRequestPaymentBehavior allowIncomplete = DeleteSubscriptionItemsItemRequestPaymentBehavior._('allow_incomplete');

static const DeleteSubscriptionItemsItemRequestPaymentBehavior defaultIncomplete = DeleteSubscriptionItemsItemRequestPaymentBehavior._('default_incomplete');

static const DeleteSubscriptionItemsItemRequestPaymentBehavior errorIfIncomplete = DeleteSubscriptionItemsItemRequestPaymentBehavior._('error_if_incomplete');

static const DeleteSubscriptionItemsItemRequestPaymentBehavior pendingIfIncomplete = DeleteSubscriptionItemsItemRequestPaymentBehavior._('pending_if_incomplete');

static const List<DeleteSubscriptionItemsItemRequestPaymentBehavior> values = [allowIncomplete, defaultIncomplete, errorIfIncomplete, pendingIfIncomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteSubscriptionItemsItemRequestPaymentBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteSubscriptionItemsItemRequestPaymentBehavior($value)'; } 
 }
/// Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
final class DeleteSubscriptionItemsItemRequestProrationBehavior {const DeleteSubscriptionItemsItemRequestProrationBehavior._(this.value);

factory DeleteSubscriptionItemsItemRequestProrationBehavior.fromJson(String json) { return switch (json) {
  'always_invoice' => alwaysInvoice,
  'create_prorations' => createProrations,
  'none' => none,
  _ => DeleteSubscriptionItemsItemRequestProrationBehavior._(json),
}; }

static const DeleteSubscriptionItemsItemRequestProrationBehavior alwaysInvoice = DeleteSubscriptionItemsItemRequestProrationBehavior._('always_invoice');

static const DeleteSubscriptionItemsItemRequestProrationBehavior createProrations = DeleteSubscriptionItemsItemRequestProrationBehavior._('create_prorations');

static const DeleteSubscriptionItemsItemRequestProrationBehavior none = DeleteSubscriptionItemsItemRequestProrationBehavior._('none');

static const List<DeleteSubscriptionItemsItemRequestProrationBehavior> values = [alwaysInvoice, createProrations, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteSubscriptionItemsItemRequestProrationBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeleteSubscriptionItemsItemRequestProrationBehavior($value)'; } 
 }
final class DeleteSubscriptionItemsItemRequest {const DeleteSubscriptionItemsItemRequest({this.clearUsage, this.paymentBehavior, this.prorationBehavior, this.prorationDate, });

factory DeleteSubscriptionItemsItemRequest.fromJson(Map<String, dynamic> json) { return DeleteSubscriptionItemsItemRequest(
  clearUsage: json['clear_usage'] as bool?,
  paymentBehavior: json['payment_behavior'] != null ? DeleteSubscriptionItemsItemRequestPaymentBehavior.fromJson(json['payment_behavior'] as String) : null,
  prorationBehavior: json['proration_behavior'] != null ? DeleteSubscriptionItemsItemRequestProrationBehavior.fromJson(json['proration_behavior'] as String) : null,
  prorationDate: json['proration_date'] != null ? (json['proration_date'] as num).toInt() : null,
); }

/// Delete all usage for the given subscription item. Allowed only when the current plan's `usage_type` is `metered`.
final bool? clearUsage;

/// Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
/// 
/// Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
/// 
/// Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).
/// 
/// Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
final DeleteSubscriptionItemsItemRequestPaymentBehavior? paymentBehavior;

/// Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
final DeleteSubscriptionItemsItemRequestProrationBehavior? prorationBehavior;

/// If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
final int? prorationDate;

Map<String, dynamic> toJson() { return {
  'clear_usage': ?clearUsage,
  if (paymentBehavior != null) 'payment_behavior': paymentBehavior?.toJson(),
  if (prorationBehavior != null) 'proration_behavior': prorationBehavior?.toJson(),
  'proration_date': ?prorationDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'clear_usage', 'payment_behavior', 'proration_behavior', 'proration_date'}.contains(key)); } 
DeleteSubscriptionItemsItemRequest copyWith({bool Function()? clearUsage, DeleteSubscriptionItemsItemRequestPaymentBehavior Function()? paymentBehavior, DeleteSubscriptionItemsItemRequestProrationBehavior Function()? prorationBehavior, int Function()? prorationDate, }) { return DeleteSubscriptionItemsItemRequest(
  clearUsage: clearUsage != null ? clearUsage() : this.clearUsage,
  paymentBehavior: paymentBehavior != null ? paymentBehavior() : this.paymentBehavior,
  prorationBehavior: prorationBehavior != null ? prorationBehavior() : this.prorationBehavior,
  prorationDate: prorationDate != null ? prorationDate() : this.prorationDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteSubscriptionItemsItemRequest &&
          clearUsage == other.clearUsage &&
          paymentBehavior == other.paymentBehavior &&
          prorationBehavior == other.prorationBehavior &&
          prorationDate == other.prorationDate; } 
@override int get hashCode { return Object.hash(clearUsage, paymentBehavior, prorationBehavior, prorationDate); } 
@override String toString() { return 'DeleteSubscriptionItemsItemRequest(clearUsage: $clearUsage, paymentBehavior: $paymentBehavior, prorationBehavior: $prorationBehavior, prorationDate: $prorationDate)'; } 
 }
