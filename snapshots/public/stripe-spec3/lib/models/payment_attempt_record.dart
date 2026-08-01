// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_amount.dart';import 'payments_primitives_payment_records_resource_customer_details.dart';import 'payments_primitives_payment_records_resource_payment_method_details.dart';import 'payments_primitives_payment_records_resource_processor_details.dart';import 'payments_primitives_payment_records_resource_shipping_details.dart';/// Indicates whether the customer was present in your checkout flow during this payment.
@immutable final class PaymentAttemptRecordCustomerPresence {const PaymentAttemptRecordCustomerPresence._(this.value);

factory PaymentAttemptRecordCustomerPresence.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentAttemptRecordCustomerPresence._(json),
}; }

static const PaymentAttemptRecordCustomerPresence offSession = PaymentAttemptRecordCustomerPresence._('off_session');

static const PaymentAttemptRecordCustomerPresence onSession = PaymentAttemptRecordCustomerPresence._('on_session');

static const List<PaymentAttemptRecordCustomerPresence> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentAttemptRecordCustomerPresence && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentAttemptRecordCustomerPresence($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class PaymentAttemptRecordObject {const PaymentAttemptRecordObject._(this.value);

factory PaymentAttemptRecordObject.fromJson(String json) { return switch (json) {
  'payment_attempt_record' => paymentAttemptRecord,
  _ => PaymentAttemptRecordObject._(json),
}; }

static const PaymentAttemptRecordObject paymentAttemptRecord = PaymentAttemptRecordObject._('payment_attempt_record');

static const List<PaymentAttemptRecordObject> values = [paymentAttemptRecord];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentAttemptRecordObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentAttemptRecordObject($value)'; } 
 }
/// Indicates who reported the payment.
@immutable final class PaymentAttemptRecordReportedBy {const PaymentAttemptRecordReportedBy._(this.value);

factory PaymentAttemptRecordReportedBy.fromJson(String json) { return switch (json) {
  'self' => self,
  'stripe' => stripe,
  _ => PaymentAttemptRecordReportedBy._(json),
}; }

static const PaymentAttemptRecordReportedBy self = PaymentAttemptRecordReportedBy._('self');

static const PaymentAttemptRecordReportedBy stripe = PaymentAttemptRecordReportedBy._('stripe');

static const List<PaymentAttemptRecordReportedBy> values = [self, stripe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentAttemptRecordReportedBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentAttemptRecordReportedBy($value)'; } 
 }
/// A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.
/// Each payment attempt tries to collect a fixed amount of money from a fixed customer and payment
/// method. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Record
/// can have guaranteed funds.
@immutable final class PaymentAttemptRecord {const PaymentAttemptRecord({required this.amount, required this.amountAuthorized, required this.amountCanceled, required this.amountFailed, required this.amountGuaranteed, required this.amountRefunded, required this.amountRequested, required this.created, required this.id, required this.livemode, required this.metadata, required this.object, required this.processorDetails, required this.reportedBy, this.application = const Omittable.absent(), this.customerDetails = const Omittable.absent(), this.customerPresence = const Omittable.absent(), this.description = const Omittable.absent(), this.paymentMethodDetails = const Omittable.absent(), this.paymentRecord = const Omittable.absent(), this.shippingDetails = const Omittable.absent(), });

factory PaymentAttemptRecord.fromJson(Map<String, dynamic> json) { return PaymentAttemptRecord(
  amount: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount'] as Map<String, dynamic>),
  amountAuthorized: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_authorized'] as Map<String, dynamic>),
  amountCanceled: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_canceled'] as Map<String, dynamic>),
  amountFailed: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_failed'] as Map<String, dynamic>),
  amountGuaranteed: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_guaranteed'] as Map<String, dynamic>),
  amountRefunded: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_refunded'] as Map<String, dynamic>),
  amountRequested: PaymentsPrimitivesPaymentRecordsResourceAmount.fromJson(json['amount_requested'] as Map<String, dynamic>),
  application: json.containsKey('application') ? Omittable(json['application'] as String?) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  customerDetails: json.containsKey('customer_details') ? Omittable(json['customer_details'] != null ? PaymentsPrimitivesPaymentRecordsResourceCustomerDetails.fromJson(json['customer_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  customerPresence: json.containsKey('customer_presence') ? Omittable(json['customer_presence'] != null ? PaymentAttemptRecordCustomerPresence.fromJson(json['customer_presence'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: PaymentAttemptRecordObject.fromJson(json['object'] as String),
  paymentMethodDetails: json.containsKey('payment_method_details') ? Omittable(json['payment_method_details'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentRecord: json.containsKey('payment_record') ? Omittable(json['payment_record'] as String?) : const Omittable.absent(),
  processorDetails: PaymentsPrimitivesPaymentRecordsResourceProcessorDetails.fromJson(json['processor_details'] as Map<String, dynamic>),
  reportedBy: PaymentAttemptRecordReportedBy.fromJson(json['reported_by'] as String),
  shippingDetails: json.containsKey('shipping_details') ? Omittable(json['shipping_details'] != null ? PaymentsPrimitivesPaymentRecordsResourceShippingDetails.fromJson(json['shipping_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final PaymentsPrimitivesPaymentRecordsResourceAmount amount;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountAuthorized;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountCanceled;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountFailed;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountGuaranteed;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountRefunded;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountRequested;

/// ID of the Connect application that created the PaymentAttemptRecord.
final Omittable<String?> application;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Customer information for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourceCustomerDetails?> customerDetails;

/// Indicates whether the customer was present in your checkout flow during this payment.
final Omittable<PaymentAttemptRecordCustomerPresence?> customerPresence;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final PaymentAttemptRecordObject object;

/// Information about the Payment Method debited for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?> paymentMethodDetails;

/// ID of the Payment Record this Payment Attempt Record belongs to.
final Omittable<String?> paymentRecord;

final PaymentsPrimitivesPaymentRecordsResourceProcessorDetails processorDetails;

/// Indicates who reported the payment.
final PaymentAttemptRecordReportedBy reportedBy;

/// Shipping information for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourceShippingDetails?> shippingDetails;

Map<String, dynamic> toJson() { return {
  'amount': amount.toJson(),
  'amount_authorized': amountAuthorized.toJson(),
  'amount_canceled': amountCanceled.toJson(),
  'amount_failed': amountFailed.toJson(),
  'amount_guaranteed': amountGuaranteed.toJson(),
  'amount_refunded': amountRefunded.toJson(),
  'amount_requested': amountRequested.toJson(),
  if (application.isPresent) 'application': application.value,
  'created': created,
  if (customerDetails.isPresent) 'customer_details': customerDetails.value?.toJson(),
  if (customerPresence.isPresent) 'customer_presence': customerPresence.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  if (paymentMethodDetails.isPresent) 'payment_method_details': paymentMethodDetails.value?.toJson(),
  if (paymentRecord.isPresent) 'payment_record': paymentRecord.value,
  'processor_details': processorDetails.toJson(),
  'reported_by': reportedBy.toJson(),
  if (shippingDetails.isPresent) 'shipping_details': shippingDetails.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') &&
      json.containsKey('amount_authorized') &&
      json.containsKey('amount_canceled') &&
      json.containsKey('amount_failed') &&
      json.containsKey('amount_guaranteed') &&
      json.containsKey('amount_refunded') &&
      json.containsKey('amount_requested') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('processor_details') &&
      json.containsKey('reported_by'); } 
PaymentAttemptRecord copyWith({PaymentsPrimitivesPaymentRecordsResourceAmount? amount, PaymentsPrimitivesPaymentRecordsResourceAmount? amountAuthorized, PaymentsPrimitivesPaymentRecordsResourceAmount? amountCanceled, PaymentsPrimitivesPaymentRecordsResourceAmount? amountFailed, PaymentsPrimitivesPaymentRecordsResourceAmount? amountGuaranteed, PaymentsPrimitivesPaymentRecordsResourceAmount? amountRefunded, PaymentsPrimitivesPaymentRecordsResourceAmount? amountRequested, Omittable<String?>? application, int? created, Omittable<PaymentsPrimitivesPaymentRecordsResourceCustomerDetails?>? customerDetails, Omittable<PaymentAttemptRecordCustomerPresence?>? customerPresence, Omittable<String?>? description, String? id, bool? livemode, Map<String,String>? metadata, PaymentAttemptRecordObject? object, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?>? paymentMethodDetails, Omittable<String?>? paymentRecord, PaymentsPrimitivesPaymentRecordsResourceProcessorDetails? processorDetails, PaymentAttemptRecordReportedBy? reportedBy, Omittable<PaymentsPrimitivesPaymentRecordsResourceShippingDetails?>? shippingDetails, }) { return PaymentAttemptRecord(
  amount: amount ?? this.amount,
  amountAuthorized: amountAuthorized ?? this.amountAuthorized,
  amountCanceled: amountCanceled ?? this.amountCanceled,
  amountFailed: amountFailed ?? this.amountFailed,
  amountGuaranteed: amountGuaranteed ?? this.amountGuaranteed,
  amountRefunded: amountRefunded ?? this.amountRefunded,
  amountRequested: amountRequested ?? this.amountRequested,
  application: application ?? this.application,
  created: created ?? this.created,
  customerDetails: customerDetails ?? this.customerDetails,
  customerPresence: customerPresence ?? this.customerPresence,
  description: description ?? this.description,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  paymentRecord: paymentRecord ?? this.paymentRecord,
  processorDetails: processorDetails ?? this.processorDetails,
  reportedBy: reportedBy ?? this.reportedBy,
  shippingDetails: shippingDetails ?? this.shippingDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentAttemptRecord &&
          amount == other.amount &&
          amountAuthorized == other.amountAuthorized &&
          amountCanceled == other.amountCanceled &&
          amountFailed == other.amountFailed &&
          amountGuaranteed == other.amountGuaranteed &&
          amountRefunded == other.amountRefunded &&
          amountRequested == other.amountRequested &&
          application == other.application &&
          created == other.created &&
          customerDetails == other.customerDetails &&
          customerPresence == other.customerPresence &&
          description == other.description &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          paymentMethodDetails == other.paymentMethodDetails &&
          paymentRecord == other.paymentRecord &&
          processorDetails == other.processorDetails &&
          reportedBy == other.reportedBy &&
          shippingDetails == other.shippingDetails; } 
@override int get hashCode { return Object.hashAll([amount, amountAuthorized, amountCanceled, amountFailed, amountGuaranteed, amountRefunded, amountRequested, application, created, customerDetails, customerPresence, description, id, livemode, metadata, object, paymentMethodDetails, paymentRecord, processorDetails, reportedBy, shippingDetails]); } 
@override String toString() { return 'PaymentAttemptRecord(amount: $amount, amountAuthorized: $amountAuthorized, amountCanceled: $amountCanceled, amountFailed: $amountFailed, amountGuaranteed: $amountGuaranteed, amountRefunded: $amountRefunded, amountRequested: $amountRequested, application: $application, created: $created, customerDetails: $customerDetails, customerPresence: $customerPresence, description: $description, id: $id, livemode: $livemode, metadata: $metadata, object: $object, paymentMethodDetails: $paymentMethodDetails, paymentRecord: $paymentRecord, processorDetails: $processorDetails, reportedBy: $reportedBy, shippingDetails: $shippingDetails)'; } 
 }
