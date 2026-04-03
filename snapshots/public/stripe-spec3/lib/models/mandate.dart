// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_acceptance.dart';import 'mandate_multi_use.dart';import 'mandate_payment_method.dart';import 'mandate_payment_method_details.dart';import 'mandate_single_use.dart';import 'payment_method.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class MandateObject {const MandateObject._(this.value);

factory MandateObject.fromJson(String json) { return switch (json) {
  'mandate' => mandate,
  _ => MandateObject._(json),
}; }

static const MandateObject mandate = MandateObject._('mandate');

static const List<MandateObject> values = [mandate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateObject($value)'; } 
 }
/// The mandate status indicates whether or not you can use it to initiate a payment.
@immutable final class MandateStatus {const MandateStatus._(this.value);

factory MandateStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'inactive' => inactive,
  'pending' => pending,
  _ => MandateStatus._(json),
}; }

static const MandateStatus active = MandateStatus._('active');

static const MandateStatus inactive = MandateStatus._('inactive');

static const MandateStatus pending = MandateStatus._('pending');

static const List<MandateStatus> values = [active, inactive, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateStatus($value)'; } 
 }
/// The type of the mandate.
@immutable final class MandateType {const MandateType._(this.value);

factory MandateType.fromJson(String json) { return switch (json) {
  'multi_use' => multiUse,
  'single_use' => singleUse,
  _ => MandateType._(json),
}; }

static const MandateType multiUse = MandateType._('multi_use');

static const MandateType singleUse = MandateType._('single_use');

static const List<MandateType> values = [multiUse, singleUse];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MandateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MandateType($value)'; } 
 }
/// A Mandate is a record of the permission that your customer gives you to debit their payment method.
@immutable final class Mandate {const Mandate({required this.customerAcceptance, required this.id, required this.livemode, required this.object, required this.paymentMethod, required this.paymentMethodDetails, required this.status, required this.type, this.multiUse, this.onBehalfOf, this.singleUse, });

factory Mandate.fromJson(Map<String, dynamic> json) { return Mandate(
  customerAcceptance: CustomerAcceptance.fromJson(json['customer_acceptance'] as Map<String, dynamic>),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  multiUse: json['multi_use'] != null ? MandateMultiUse.fromJson(json['multi_use'] as Map<String, dynamic>) : null,
  object: MandateObject.fromJson(json['object'] as String),
  onBehalfOf: json['on_behalf_of'] as String?,
  paymentMethod: OneOf2.parse(json['payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),),
  paymentMethodDetails: MandatePaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>),
  singleUse: json['single_use'] != null ? MandateSingleUse.fromJson(json['single_use'] as Map<String, dynamic>) : null,
  status: MandateStatus.fromJson(json['status'] as String),
  type: MandateType.fromJson(json['type'] as String),
); }

final CustomerAcceptance customerAcceptance;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

final MandateMultiUse? multiUse;

/// String representing the object's type. Objects of the same type share the same value.
final MandateObject object;

/// The account (if any) that the mandate is intended for.
final String? onBehalfOf;

/// ID of the payment method associated with this mandate.
final MandatePaymentMethod paymentMethod;

final MandatePaymentMethodDetails paymentMethodDetails;

final MandateSingleUse? singleUse;

/// The mandate status indicates whether or not you can use it to initiate a payment.
final MandateStatus status;

/// The type of the mandate.
final MandateType type;

Map<String, dynamic> toJson() { return {
  'customer_acceptance': customerAcceptance.toJson(),
  'id': id,
  'livemode': livemode,
  if (multiUse != null) 'multi_use': multiUse?.toJson(),
  'object': object.toJson(),
  'on_behalf_of': ?onBehalfOf,
  'payment_method': paymentMethod.toJson(),
  'payment_method_details': paymentMethodDetails.toJson(),
  if (singleUse != null) 'single_use': singleUse?.toJson(),
  'status': status.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customer_acceptance') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('payment_method') &&
      json.containsKey('payment_method_details') &&
      json.containsKey('status') &&
      json.containsKey('type'); } 
Mandate copyWith({CustomerAcceptance? customerAcceptance, String? id, bool? livemode, MandateMultiUse Function()? multiUse, MandateObject? object, String Function()? onBehalfOf, MandatePaymentMethod? paymentMethod, MandatePaymentMethodDetails? paymentMethodDetails, MandateSingleUse Function()? singleUse, MandateStatus? status, MandateType? type, }) { return Mandate(
  customerAcceptance: customerAcceptance ?? this.customerAcceptance,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  multiUse: multiUse != null ? multiUse() : this.multiUse,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  paymentMethod: paymentMethod ?? this.paymentMethod,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  singleUse: singleUse != null ? singleUse() : this.singleUse,
  status: status ?? this.status,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Mandate &&
          customerAcceptance == other.customerAcceptance &&
          id == other.id &&
          livemode == other.livemode &&
          multiUse == other.multiUse &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          paymentMethod == other.paymentMethod &&
          paymentMethodDetails == other.paymentMethodDetails &&
          singleUse == other.singleUse &&
          status == other.status &&
          type == other.type; } 
@override int get hashCode { return Object.hash(customerAcceptance, id, livemode, multiUse, object, onBehalfOf, paymentMethod, paymentMethodDetails, singleUse, status, type); } 
@override String toString() { return 'Mandate(customerAcceptance: $customerAcceptance, id: $id, livemode: $livemode, multiUse: $multiUse, object: $object, onBehalfOf: $onBehalfOf, paymentMethod: $paymentMethod, paymentMethodDetails: $paymentMethodDetails, singleUse: $singleUse, status: $status, type: $type)'; } 
 }
