// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'customer.dart';import 'deleted_customer.dart';import 'payment_method.dart';import 'setup_attempt_application.dart';import 'setup_attempt_customer.dart';import 'setup_attempt_on_behalf_of.dart';import 'setup_attempt_payment_method.dart';import 'setup_attempt_payment_method_details.dart';import 'setup_attempt_setup_error.dart';import 'setup_attempt_setup_intent.dart';import 'setup_intent.dart';final class SetupAttemptFlowDirections {const SetupAttemptFlowDirections._(this.value);

factory SetupAttemptFlowDirections.fromJson(String json) { return switch (json) {
  'inbound' => inbound,
  'outbound' => outbound,
  _ => SetupAttemptFlowDirections._(json),
}; }

static const SetupAttemptFlowDirections inbound = SetupAttemptFlowDirections._('inbound');

static const SetupAttemptFlowDirections outbound = SetupAttemptFlowDirections._('outbound');

static const List<SetupAttemptFlowDirections> values = [inbound, outbound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupAttemptFlowDirections && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupAttemptFlowDirections($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class SetupAttemptObject {const SetupAttemptObject._(this.value);

factory SetupAttemptObject.fromJson(String json) { return switch (json) {
  'setup_attempt' => setupAttempt,
  _ => SetupAttemptObject._(json),
}; }

static const SetupAttemptObject setupAttempt = SetupAttemptObject._('setup_attempt');

static const List<SetupAttemptObject> values = [setupAttempt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SetupAttemptObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SetupAttemptObject($value)'; } 
 }
/// A SetupAttempt describes one attempted confirmation of a SetupIntent,
/// whether that confirmation is successful or unsuccessful. You can use
/// SetupAttempts to inspect details of a specific attempt at setting up a
/// payment method using a SetupIntent.
final class SetupAttempt {const SetupAttempt({this.application, this.attachToSelf, required this.created, this.customer, this.customerAccount, this.flowDirections, required this.id, required this.livemode, required this.object, this.onBehalfOf, required this.paymentMethod, required this.paymentMethodDetails, this.setupError, required this.setupIntent, required this.status, required this.usage, });

factory SetupAttempt.fromJson(Map<String, dynamic> json) { return SetupAttempt(
  application: json['application'] != null ? OneOf2.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>),) : null,
  attachToSelf: json['attach_to_self'] as bool?,
  created: (json['created'] as num).toInt(),
  customer: json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null,
  customerAccount: json['customer_account'] as String?,
  flowDirections: (json['flow_directions'] as List<dynamic>?)?.map((e) => SetupAttemptFlowDirections.fromJson(e as String)).toList(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: SetupAttemptObject.fromJson(json['object'] as String),
  onBehalfOf: json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  paymentMethod: OneOf2.parse(json['payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),),
  paymentMethodDetails: SetupAttemptPaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>),
  setupError: json['setup_error'] != null ? SetupAttemptSetupError.fromJson(json['setup_error'] as Map<String, dynamic>) : null,
  setupIntent: OneOf2.parse(json['setup_intent'], fromA: (v) => v as String, fromB: (v) => SetupIntent.fromJson(v as Map<String, dynamic>),),
  status: json['status'] as String,
  usage: json['usage'] as String,
); }

/// The value of [application](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-application) on the SetupIntent at the time of this confirmation.
final SetupAttemptApplication? application;

/// If present, the SetupIntent's payment method will be attached to the in-context Stripe Account.
/// 
/// It can only be used for this Stripe Account’s own money movement flows like InboundTransfer and OutboundTransfers. It cannot be set to true when setting up a PaymentMethod for a Customer, and defaults to false when attaching a PaymentMethod to a Customer.
final bool? attachToSelf;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The value of [customer](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer) on the SetupIntent at the time of this confirmation.
final SetupAttemptCustomer? customer;

/// The value of [customer_account](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-customer_account) on the SetupIntent at the time of this confirmation.
final String? customerAccount;

/// Indicates the directions of money movement for which this payment method is intended to be used.
/// 
/// Include `inbound` if you intend to use the payment method as the origin to pull funds from. Include `outbound` if you intend to use the payment method as the destination to send funds to. You can include both if you intend to use the payment method for both purposes.
final List<SetupAttemptFlowDirections>? flowDirections;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final SetupAttemptObject object;

/// The value of [on_behalf_of](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-on_behalf_of) on the SetupIntent at the time of this confirmation.
final SetupAttemptOnBehalfOf? onBehalfOf;

/// ID of the payment method used with this SetupAttempt.
final SetupAttemptPaymentMethod paymentMethod;

final SetupAttemptPaymentMethodDetails paymentMethodDetails;

/// The error encountered during this attempt to confirm the SetupIntent, if any.
final SetupAttemptSetupError? setupError;

/// ID of the SetupIntent that this attempt belongs to.
final SetupAttemptSetupIntent setupIntent;

/// Status of this SetupAttempt, one of `requires_confirmation`, `requires_action`, `processing`, `succeeded`, `failed`, or `abandoned`.
final String status;

/// The value of [usage](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) on the SetupIntent at the time of this confirmation, one of `off_session` or `on_session`.
final String usage;

Map<String, dynamic> toJson() { return {
  if (application != null) 'application': application?.toJson(),
  'attach_to_self': ?attachToSelf,
  'created': created,
  if (customer != null) 'customer': customer?.toJson(),
  'customer_account': ?customerAccount,
  if (flowDirections != null) 'flow_directions': flowDirections?.map((e) => e.toJson()).toList(),
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  if (onBehalfOf != null) 'on_behalf_of': onBehalfOf?.toJson(),
  'payment_method': paymentMethod.toJson(),
  'payment_method_details': paymentMethodDetails.toJson(),
  if (setupError != null) 'setup_error': setupError?.toJson(),
  'setup_intent': setupIntent.toJson(),
  'status': status,
  'usage': usage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('payment_method') &&
      json.containsKey('payment_method_details') &&
      json.containsKey('setup_intent') &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('usage') && json['usage'] is String; } 
SetupAttempt copyWith({SetupAttemptApplication? Function()? application, bool Function()? attachToSelf, int? created, SetupAttemptCustomer? Function()? customer, String? Function()? customerAccount, List<SetupAttemptFlowDirections>? Function()? flowDirections, String? id, bool? livemode, SetupAttemptObject? object, SetupAttemptOnBehalfOf? Function()? onBehalfOf, SetupAttemptPaymentMethod? paymentMethod, SetupAttemptPaymentMethodDetails? paymentMethodDetails, SetupAttemptSetupError? Function()? setupError, SetupAttemptSetupIntent? setupIntent, String? status, String? usage, }) { return SetupAttempt(
  application: application != null ? application() : this.application,
  attachToSelf: attachToSelf != null ? attachToSelf() : this.attachToSelf,
  created: created ?? this.created,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  flowDirections: flowDirections != null ? flowDirections() : this.flowDirections,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  paymentMethod: paymentMethod ?? this.paymentMethod,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  setupError: setupError != null ? setupError() : this.setupError,
  setupIntent: setupIntent ?? this.setupIntent,
  status: status ?? this.status,
  usage: usage ?? this.usage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupAttempt &&
          application == other.application &&
          attachToSelf == other.attachToSelf &&
          created == other.created &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          listEquals(flowDirections, other.flowDirections) &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          paymentMethod == other.paymentMethod &&
          paymentMethodDetails == other.paymentMethodDetails &&
          setupError == other.setupError &&
          setupIntent == other.setupIntent &&
          status == other.status &&
          usage == other.usage; } 
@override int get hashCode { return Object.hash(application, attachToSelf, created, customer, customerAccount, Object.hashAll(flowDirections ?? const []), id, livemode, object, onBehalfOf, paymentMethod, paymentMethodDetails, setupError, setupIntent, status, usage); } 
@override String toString() { return 'SetupAttempt(application: $application, attachToSelf: $attachToSelf, created: $created, customer: $customer, customerAccount: $customerAccount, flowDirections: $flowDirections, id: $id, livemode: $livemode, object: $object, onBehalfOf: $onBehalfOf, paymentMethod: $paymentMethod, paymentMethodDetails: $paymentMethodDetails, setupError: $setupError, setupIntent: $setupIntent, status: $status, usage: $usage)'; } 
 }
