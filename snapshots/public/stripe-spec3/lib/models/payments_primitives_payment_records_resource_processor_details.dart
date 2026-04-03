// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_processor_details_resource_custom_details.dart';/// The processor used for this payment attempt.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType {const PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType._(this.value);

factory PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType._(json),
}; }

static const PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType custom = PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType._('custom');

static const List<PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType($value)'; } 
 }
/// Processor information associated with this payment.
@immutable final class PaymentsPrimitivesPaymentRecordsResourceProcessorDetails {const PaymentsPrimitivesPaymentRecordsResourceProcessorDetails({required this.type, this.custom, });

factory PaymentsPrimitivesPaymentRecordsResourceProcessorDetails.fromJson(Map<String, dynamic> json) { return PaymentsPrimitivesPaymentRecordsResourceProcessorDetails(
  custom: json['custom'] != null ? PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails.fromJson(json['custom'] as Map<String, dynamic>) : null,
  type: PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType.fromJson(json['type'] as String),
); }

final PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails? custom;

/// The processor used for this payment attempt.
final PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType type;

Map<String, dynamic> toJson() { return {
  if (custom != null) 'custom': custom?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PaymentsPrimitivesPaymentRecordsResourceProcessorDetails copyWith({PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsResourceCustomDetails Function()? custom, PaymentsPrimitivesPaymentRecordsResourceProcessorDetailsType? type, }) { return PaymentsPrimitivesPaymentRecordsResourceProcessorDetails(
  custom: custom != null ? custom() : this.custom,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentsPrimitivesPaymentRecordsResourceProcessorDetails &&
          custom == other.custom &&
          type == other.type; } 
@override int get hashCode { return Object.hash(custom, type); } 
@override String toString() { return 'PaymentsPrimitivesPaymentRecordsResourceProcessorDetails(custom: $custom, type: $type)'; } 
 }
