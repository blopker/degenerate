// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'application.dart';import 'customer.dart';import 'deleted_application.dart';import 'deleted_customer.dart';import 'subscription.dart';import 'subscription_schedule_application.dart';import 'subscription_schedule_current_phase.dart';import 'subscription_schedule_customer.dart';import 'subscription_schedule_phase_configuration.dart';import 'subscription_schedule_subscription.dart';import 'subscription_schedule_test_clock.dart';import 'subscription_schedules_resource_default_settings.dart';import 'subscriptions_resource_billing_mode.dart';import 'test_helpers_test_clock.dart';/// Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
@immutable final class SubscriptionScheduleEndBehavior {const SubscriptionScheduleEndBehavior._(this.value);

factory SubscriptionScheduleEndBehavior.fromJson(String json) { return switch (json) {
  'cancel' => cancel,
  'none' => none,
  'release' => release,
  'renew' => renew,
  _ => SubscriptionScheduleEndBehavior._(json),
}; }

static const SubscriptionScheduleEndBehavior cancel = SubscriptionScheduleEndBehavior._('cancel');

static const SubscriptionScheduleEndBehavior none = SubscriptionScheduleEndBehavior._('none');

static const SubscriptionScheduleEndBehavior release = SubscriptionScheduleEndBehavior._('release');

static const SubscriptionScheduleEndBehavior renew = SubscriptionScheduleEndBehavior._('renew');

static const List<SubscriptionScheduleEndBehavior> values = [cancel, none, release, renew];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionScheduleEndBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionScheduleEndBehavior($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class SubscriptionScheduleObject {const SubscriptionScheduleObject._(this.value);

factory SubscriptionScheduleObject.fromJson(String json) { return switch (json) {
  'subscription_schedule' => subscriptionSchedule,
  _ => SubscriptionScheduleObject._(json),
}; }

static const SubscriptionScheduleObject subscriptionSchedule = SubscriptionScheduleObject._('subscription_schedule');

static const List<SubscriptionScheduleObject> values = [subscriptionSchedule];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionScheduleObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionScheduleObject($value)'; } 
 }
/// The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://docs.stripe.com/billing/subscriptions/subscription-schedules).
@immutable final class SubscriptionScheduleStatus {const SubscriptionScheduleStatus._(this.value);

factory SubscriptionScheduleStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  'completed' => completed,
  'not_started' => notStarted,
  'released' => released,
  _ => SubscriptionScheduleStatus._(json),
}; }

static const SubscriptionScheduleStatus active = SubscriptionScheduleStatus._('active');

static const SubscriptionScheduleStatus canceled = SubscriptionScheduleStatus._('canceled');

static const SubscriptionScheduleStatus completed = SubscriptionScheduleStatus._('completed');

static const SubscriptionScheduleStatus notStarted = SubscriptionScheduleStatus._('not_started');

static const SubscriptionScheduleStatus released = SubscriptionScheduleStatus._('released');

static const List<SubscriptionScheduleStatus> values = [active, canceled, completed, notStarted, released];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionScheduleStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionScheduleStatus($value)'; } 
 }
/// A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.
/// 
/// Related guide: [Subscription schedules](https://docs.stripe.com/billing/subscriptions/subscription-schedules)
@immutable final class SubscriptionSchedule {const SubscriptionSchedule({required this.billingMode, required this.created, required this.customer, required this.defaultSettings, required this.endBehavior, required this.id, required this.livemode, required this.object, required this.phases, required this.status, this.application = const Omittable.absent(), this.canceledAt = const Omittable.absent(), this.completedAt = const Omittable.absent(), this.currentPhase = const Omittable.absent(), this.customerAccount = const Omittable.absent(), this.metadata = const Omittable.absent(), this.releasedAt = const Omittable.absent(), this.releasedSubscription = const Omittable.absent(), this.subscription = const Omittable.absent(), this.testClock = const Omittable.absent(), });

factory SubscriptionSchedule.fromJson(Map<String, dynamic> json) { return SubscriptionSchedule(
  application: json.containsKey('application') ? Omittable(json['application'] != null ? OneOf3.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedApplication.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  billingMode: SubscriptionsResourceBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>),
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  completedAt: json.containsKey('completed_at') ? Omittable(json['completed_at'] != null ? (json['completed_at'] as num).toInt() : null) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  currentPhase: json.containsKey('current_phase') ? Omittable(json['current_phase'] != null ? SubscriptionScheduleCurrentPhase.fromJson(json['current_phase'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customer: OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),),
  customerAccount: json.containsKey('customer_account') ? Omittable(json['customer_account'] as String?) : const Omittable.absent(),
  defaultSettings: SubscriptionSchedulesResourceDefaultSettings.fromJson(json['default_settings'] as Map<String, dynamic>),
  endBehavior: SubscriptionScheduleEndBehavior.fromJson(json['end_behavior'] as String),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  object: SubscriptionScheduleObject.fromJson(json['object'] as String),
  phases: (json['phases'] as List<dynamic>).map((e) => SubscriptionSchedulePhaseConfiguration.fromJson(e as Map<String, dynamic>)).toList(),
  releasedAt: json.containsKey('released_at') ? Omittable(json['released_at'] != null ? (json['released_at'] as num).toInt() : null) : const Omittable.absent(),
  releasedSubscription: json.containsKey('released_subscription') ? Omittable(json['released_subscription'] as String?) : const Omittable.absent(),
  status: SubscriptionScheduleStatus.fromJson(json['status'] as String),
  subscription: json.containsKey('subscription') ? Omittable(json['subscription'] != null ? OneOf2.parse(json['subscription'], fromA: (v) => v as String, fromB: (v) => Subscription.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  testClock: json.containsKey('test_clock') ? Omittable(json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// ID of the Connect Application that created the schedule.
final Omittable<SubscriptionScheduleApplication?> application;

final SubscriptionsResourceBillingMode billingMode;

/// Time at which the subscription schedule was canceled. Measured in seconds since the Unix epoch.
final Omittable<int?> canceledAt;

/// Time at which the subscription schedule was completed. Measured in seconds since the Unix epoch.
final Omittable<int?> completedAt;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`.
final Omittable<SubscriptionScheduleCurrentPhase?> currentPhase;

/// ID of the customer who owns the subscription schedule.
final SubscriptionScheduleCustomer customer;

/// ID of the account who owns the subscription schedule.
final Omittable<String?> customerAccount;

final SubscriptionSchedulesResourceDefaultSettings defaultSettings;

/// Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
final SubscriptionScheduleEndBehavior endBehavior;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final SubscriptionScheduleObject object;

/// Configuration for the subscription schedule's phases.
final List<SubscriptionSchedulePhaseConfiguration> phases;

/// Time at which the subscription schedule was released. Measured in seconds since the Unix epoch.
final Omittable<int?> releasedAt;

/// ID of the subscription once managed by the subscription schedule (if it is released).
final Omittable<String?> releasedSubscription;

/// The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://docs.stripe.com/billing/subscriptions/subscription-schedules).
final SubscriptionScheduleStatus status;

/// ID of the subscription managed by the subscription schedule.
final Omittable<SubscriptionScheduleSubscription?> subscription;

/// ID of the test clock this subscription schedule belongs to.
final Omittable<SubscriptionScheduleTestClock?> testClock;

Map<String, dynamic> toJson() { return {
  if (application.isPresent) 'application': application.value?.toJson(),
  'billing_mode': billingMode.toJson(),
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (completedAt.isPresent) 'completed_at': completedAt.value,
  'created': created,
  if (currentPhase.isPresent) 'current_phase': currentPhase.value?.toJson(),
  'customer': customer.toJson(),
  if (customerAccount.isPresent) 'customer_account': customerAccount.value,
  'default_settings': defaultSettings.toJson(),
  'end_behavior': endBehavior.toJson(),
  'id': id,
  'livemode': livemode,
  if (metadata.isPresent) 'metadata': metadata.value,
  'object': object.toJson(),
  'phases': phases.map((e) => e.toJson()).toList(),
  if (releasedAt.isPresent) 'released_at': releasedAt.value,
  if (releasedSubscription.isPresent) 'released_subscription': releasedSubscription.value,
  'status': status.toJson(),
  if (subscription.isPresent) 'subscription': subscription.value?.toJson(),
  if (testClock.isPresent) 'test_clock': testClock.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_mode') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('customer') &&
      json.containsKey('default_settings') &&
      json.containsKey('end_behavior') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('phases') &&
      json.containsKey('status'); } 
SubscriptionSchedule copyWith({Omittable<SubscriptionScheduleApplication?>? application, SubscriptionsResourceBillingMode? billingMode, Omittable<int?>? canceledAt, Omittable<int?>? completedAt, int? created, Omittable<SubscriptionScheduleCurrentPhase?>? currentPhase, SubscriptionScheduleCustomer? customer, Omittable<String?>? customerAccount, SubscriptionSchedulesResourceDefaultSettings? defaultSettings, SubscriptionScheduleEndBehavior? endBehavior, String? id, bool? livemode, Omittable<Map<String,String>?>? metadata, SubscriptionScheduleObject? object, List<SubscriptionSchedulePhaseConfiguration>? phases, Omittable<int?>? releasedAt, Omittable<String?>? releasedSubscription, SubscriptionScheduleStatus? status, Omittable<SubscriptionScheduleSubscription?>? subscription, Omittable<SubscriptionScheduleTestClock?>? testClock, }) { return SubscriptionSchedule(
  application: application ?? this.application,
  billingMode: billingMode ?? this.billingMode,
  canceledAt: canceledAt ?? this.canceledAt,
  completedAt: completedAt ?? this.completedAt,
  created: created ?? this.created,
  currentPhase: currentPhase ?? this.currentPhase,
  customer: customer ?? this.customer,
  customerAccount: customerAccount ?? this.customerAccount,
  defaultSettings: defaultSettings ?? this.defaultSettings,
  endBehavior: endBehavior ?? this.endBehavior,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  phases: phases ?? this.phases,
  releasedAt: releasedAt ?? this.releasedAt,
  releasedSubscription: releasedSubscription ?? this.releasedSubscription,
  status: status ?? this.status,
  subscription: subscription ?? this.subscription,
  testClock: testClock ?? this.testClock,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionSchedule &&
          application == other.application &&
          billingMode == other.billingMode &&
          canceledAt == other.canceledAt &&
          completedAt == other.completedAt &&
          created == other.created &&
          currentPhase == other.currentPhase &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          defaultSettings == other.defaultSettings &&
          endBehavior == other.endBehavior &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          listEquals(phases, other.phases) &&
          releasedAt == other.releasedAt &&
          releasedSubscription == other.releasedSubscription &&
          status == other.status &&
          subscription == other.subscription &&
          testClock == other.testClock; } 
@override int get hashCode { return Object.hash(application, billingMode, canceledAt, completedAt, created, currentPhase, customer, customerAccount, defaultSettings, endBehavior, id, livemode, metadata, object, Object.hashAll(phases), releasedAt, releasedSubscription, status, subscription, testClock); } 
@override String toString() { return 'SubscriptionSchedule(application: $application, billingMode: $billingMode, canceledAt: $canceledAt, completedAt: $completedAt, created: $created, currentPhase: $currentPhase, customer: $customer, customerAccount: $customerAccount, defaultSettings: $defaultSettings, endBehavior: $endBehavior, id: $id, livemode: $livemode, metadata: $metadata, object: $object, phases: $phases, releasedAt: $releasedAt, releasedSubscription: $releasedSubscription, status: $status, subscription: $subscription, testClock: $testClock)'; } 
 }
