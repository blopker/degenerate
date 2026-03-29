// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_request_billing_mode.dart';import 'post_subscription_schedules_request_default_settings.dart';import 'post_subscription_schedules_request_metadata.dart';import 'post_subscription_schedules_request_phases.dart';import 'post_subscription_schedules_request_start_date.dart';/// Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
final class PostSubscriptionSchedulesRequestEndBehavior {const PostSubscriptionSchedulesRequestEndBehavior._(this.value);

factory PostSubscriptionSchedulesRequestEndBehavior.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'none' => none,
  'release' => release,
  'renew' => renew,
  _ => PostSubscriptionSchedulesRequestEndBehavior._(json),
}; }

static const PostSubscriptionSchedulesRequestEndBehavior cancel = PostSubscriptionSchedulesRequestEndBehavior._('cancel');

static const PostSubscriptionSchedulesRequestEndBehavior none = PostSubscriptionSchedulesRequestEndBehavior._('none');

static const PostSubscriptionSchedulesRequestEndBehavior release = PostSubscriptionSchedulesRequestEndBehavior._('release');

static const PostSubscriptionSchedulesRequestEndBehavior renew = PostSubscriptionSchedulesRequestEndBehavior._('renew');

static const List<PostSubscriptionSchedulesRequestEndBehavior> values = [cancel, none, release, renew];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestEndBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestEndBehavior($value)'; } 
 }
final class PostSubscriptionSchedulesRequest {const PostSubscriptionSchedulesRequest({this.billingMode, this.customer, this.customerAccount, this.defaultSettings, this.endBehavior, this.expand, this.fromSubscription, this.metadata, this.phases, this.startDate, });

factory PostSubscriptionSchedulesRequest.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesRequest(
  billingMode: json['billing_mode'] != null ? PostSubscriptionSchedulesRequestBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>) : null,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  defaultSettings: json['default_settings'] != null ? PostSubscriptionSchedulesRequestDefaultSettings.fromJson(json['default_settings'] as Map<String, dynamic>) : null,
  endBehavior: json['end_behavior'] != null ? PostSubscriptionSchedulesRequestEndBehavior.fromJson(json['end_behavior'] as String) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  fromSubscription: json['from_subscription'] as String?,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostSubscriptionSchedulesRequestMetadataVariant2.fromJson(v as String),) : null,
  phases: (json['phases'] as List<dynamic>?)?.map((e) => PostSubscriptionSchedulesRequestPhases.fromJson(e as Map<String, dynamic>)).toList(),
  startDate: json['start_date'] != null ? OneOf2.parse(json['start_date'], fromA: (v) => (v as num).toInt(), fromB: (v) => PostSubscriptionSchedulesRequestStartDateVariant2.fromJson(v as String),) : null,
); }

/// Controls how prorations and invoices for subscriptions are calculated and orchestrated.
final PostSubscriptionSchedulesRequestBillingMode? billingMode;

/// The identifier of the customer to create the subscription schedule for.
final String? customer;

/// The identifier of the account to create the subscription schedule for.
final String? customerAccount;

/// Object representing the subscription schedule's default settings.
final PostSubscriptionSchedulesRequestDefaultSettings? defaultSettings;

/// Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
final PostSubscriptionSchedulesRequestEndBehavior? endBehavior;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
final String? fromSubscription;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostSubscriptionSchedulesRequestMetadata? metadata;

/// List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
final List<PostSubscriptionSchedulesRequestPhases>? phases;

/// When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
final PostSubscriptionSchedulesRequestStartDate? startDate;

Map<String, dynamic> toJson() { return {
  if (billingMode != null) 'billing_mode': billingMode?.toJson(),
  'customer': ?customer,
  'customer_account': ?customerAccount,
  if (defaultSettings != null) 'default_settings': defaultSettings?.toJson(),
  if (endBehavior != null) 'end_behavior': endBehavior?.toJson(),
  'expand': ?expand,
  'from_subscription': ?fromSubscription,
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (phases != null) 'phases': phases?.map((e) => e.toJson()).toList(),
  if (startDate != null) 'start_date': startDate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionSchedulesRequest copyWith({PostSubscriptionSchedulesRequestBillingMode Function()? billingMode, String Function()? customer, String Function()? customerAccount, PostSubscriptionSchedulesRequestDefaultSettings Function()? defaultSettings, PostSubscriptionSchedulesRequestEndBehavior Function()? endBehavior, List<String> Function()? expand, String Function()? fromSubscription, PostSubscriptionSchedulesRequestMetadata Function()? metadata, List<PostSubscriptionSchedulesRequestPhases> Function()? phases, PostSubscriptionSchedulesRequestStartDate Function()? startDate, }) { return PostSubscriptionSchedulesRequest(
  billingMode: billingMode != null ? billingMode() : this.billingMode,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  defaultSettings: defaultSettings != null ? defaultSettings() : this.defaultSettings,
  endBehavior: endBehavior != null ? endBehavior() : this.endBehavior,
  expand: expand != null ? expand() : this.expand,
  fromSubscription: fromSubscription != null ? fromSubscription() : this.fromSubscription,
  metadata: metadata != null ? metadata() : this.metadata,
  phases: phases != null ? phases() : this.phases,
  startDate: startDate != null ? startDate() : this.startDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesRequest &&
          billingMode == other.billingMode &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          defaultSettings == other.defaultSettings &&
          endBehavior == other.endBehavior &&
          listEquals(expand, other.expand) &&
          fromSubscription == other.fromSubscription &&
          metadata == other.metadata &&
          listEquals(phases, other.phases) &&
          startDate == other.startDate; } 
@override int get hashCode { return Object.hash(billingMode, customer, customerAccount, defaultSettings, endBehavior, Object.hashAll(expand ?? const []), fromSubscription, metadata, Object.hashAll(phases ?? const []), startDate); } 
@override String toString() { return 'PostSubscriptionSchedulesRequest(billingMode: $billingMode, customer: $customer, customerAccount: $customerAccount, defaultSettings: $defaultSettings, endBehavior: $endBehavior, expand: $expand, fromSubscription: $fromSubscription, metadata: $metadata, phases: $phases, startDate: $startDate)'; } 
 }
