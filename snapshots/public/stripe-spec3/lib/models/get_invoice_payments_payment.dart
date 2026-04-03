// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetInvoicePaymentsPaymentType {const GetInvoicePaymentsPaymentType._(this.value);

factory GetInvoicePaymentsPaymentType.fromJson(String json) { return switch (json) {
  'payment_intent' => paymentIntent,
  'payment_record' => paymentRecord,
  _ => GetInvoicePaymentsPaymentType._(json),
}; }

static const GetInvoicePaymentsPaymentType paymentIntent = GetInvoicePaymentsPaymentType._('payment_intent');

static const GetInvoicePaymentsPaymentType paymentRecord = GetInvoicePaymentsPaymentType._('payment_record');

static const List<GetInvoicePaymentsPaymentType> values = [paymentIntent, paymentRecord];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetInvoicePaymentsPaymentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetInvoicePaymentsPaymentType($value)'; } 
 }
@immutable final class GetInvoicePaymentsPayment {const GetInvoicePaymentsPayment({required this.type, this.paymentIntent, this.paymentRecord, });

factory GetInvoicePaymentsPayment.fromJson(Map<String, dynamic> json) { return GetInvoicePaymentsPayment(
  paymentIntent: json['payment_intent'] as String?,
  paymentRecord: json['payment_record'] as String?,
  type: GetInvoicePaymentsPaymentType.fromJson(json['type'] as String),
); }

final String? paymentIntent;

final String? paymentRecord;

final GetInvoicePaymentsPaymentType type;

Map<String, dynamic> toJson() { return {
  'payment_intent': ?paymentIntent,
  'payment_record': ?paymentRecord,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
GetInvoicePaymentsPayment copyWith({String Function()? paymentIntent, String Function()? paymentRecord, GetInvoicePaymentsPaymentType? type, }) { return GetInvoicePaymentsPayment(
  paymentIntent: paymentIntent != null ? paymentIntent() : this.paymentIntent,
  paymentRecord: paymentRecord != null ? paymentRecord() : this.paymentRecord,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetInvoicePaymentsPayment &&
          paymentIntent == other.paymentIntent &&
          paymentRecord == other.paymentRecord &&
          type == other.type; } 
@override int get hashCode { return Object.hash(paymentIntent, paymentRecord, type); } 
@override String toString() { return 'GetInvoicePaymentsPayment(paymentIntent: $paymentIntent, paymentRecord: $paymentRecord, type: $type)'; } 
 }
