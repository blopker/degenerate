// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payments_primitives_payment_records_resource_amount.dart';import 'payments_primitives_payment_records_resource_customer_details.dart';import 'payments_primitives_payment_records_resource_payment_method_details.dart';import 'payments_primitives_payment_records_resource_processor_details.dart';import 'payments_primitives_payment_records_resource_shipping_details.dart';/// Indicates whether the customer was present in your checkout flow during this payment.
@immutable final class PaymentRecordCustomerPresence {const PaymentRecordCustomerPresence._(this.value);

factory PaymentRecordCustomerPresence.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentRecordCustomerPresence._(json),
}; }

static const PaymentRecordCustomerPresence offSession = PaymentRecordCustomerPresence._('off_session');

static const PaymentRecordCustomerPresence onSession = PaymentRecordCustomerPresence._('on_session');

static const List<PaymentRecordCustomerPresence> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentRecordCustomerPresence && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentRecordCustomerPresence($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class PaymentRecordObject {const PaymentRecordObject._(this.value);

factory PaymentRecordObject.fromJson(String json) { return switch (json) {
  'payment_record' => paymentRecord,
  _ => PaymentRecordObject._(json),
}; }

static const PaymentRecordObject paymentRecord = PaymentRecordObject._('payment_record');

static const List<PaymentRecordObject> values = [paymentRecord];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentRecordObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentRecordObject($value)'; } 
 }
/// Indicates who reported the payment.
@immutable final class PaymentRecordReportedBy {const PaymentRecordReportedBy._(this.value);

factory PaymentRecordReportedBy.fromJson(String json) { return switch (json) {
  'self' => self,
  'stripe' => stripe,
  _ => PaymentRecordReportedBy._(json),
}; }

static const PaymentRecordReportedBy self = PaymentRecordReportedBy._('self');

static const PaymentRecordReportedBy stripe = PaymentRecordReportedBy._('stripe');

static const List<PaymentRecordReportedBy> values = [self, stripe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentRecordReportedBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentRecordReportedBy($value)'; } 
 }
/// A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
/// For example, you can create a Payment Record to model a payment made on a different payment processor,
/// in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
/// more Payment Attempt Records, which represent individual attempts made on a payment network.
@immutable final class PaymentRecord {const PaymentRecord({required this.amount, required this.amountAuthorized, required this.amountCanceled, required this.amountFailed, required this.amountGuaranteed, required this.amountRefunded, required this.amountRequested, required this.created, required this.id, required this.livemode, required this.metadata, required this.object, required this.processorDetails, required this.reportedBy, this.application = const Omittable.absent(), this.customerDetails = const Omittable.absent(), this.customerPresence = const Omittable.absent(), this.description = const Omittable.absent(), this.latestPaymentAttemptRecord = const Omittable.absent(), this.paymentMethodDetails = const Omittable.absent(), this.shippingDetails = const Omittable.absent(), });

factory PaymentRecord.fromJson(Map<String, dynamic> json) { return PaymentRecord(
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
  customerPresence: json.containsKey('customer_presence') ? Omittable(json['customer_presence'] != null ? PaymentRecordCustomerPresence.fromJson(json['customer_presence'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  latestPaymentAttemptRecord: json.containsKey('latest_payment_attempt_record') ? Omittable(json['latest_payment_attempt_record'] as String?) : const Omittable.absent(),
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: PaymentRecordObject.fromJson(json['object'] as String),
  paymentMethodDetails: json.containsKey('payment_method_details') ? Omittable(json['payment_method_details'] != null ? PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  processorDetails: PaymentsPrimitivesPaymentRecordsResourceProcessorDetails.fromJson(json['processor_details'] as Map<String, dynamic>),
  reportedBy: PaymentRecordReportedBy.fromJson(json['reported_by'] as String),
  shippingDetails: json.containsKey('shipping_details') ? Omittable(json['shipping_details'] != null ? PaymentsPrimitivesPaymentRecordsResourceShippingDetails.fromJson(json['shipping_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final PaymentsPrimitivesPaymentRecordsResourceAmount amount;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountAuthorized;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountCanceled;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountFailed;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountGuaranteed;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountRefunded;

final PaymentsPrimitivesPaymentRecordsResourceAmount amountRequested;

/// ID of the Connect application that created the PaymentRecord.
final Omittable<String?> application;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Customer information for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourceCustomerDetails?> customerDetails;

/// Indicates whether the customer was present in your checkout flow during this payment.
final Omittable<PaymentRecordCustomerPresence?> customerPresence;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Unique identifier for the object.
final String id;

/// ID of the latest Payment Attempt Record attached to this Payment Record.
final Omittable<String?> latestPaymentAttemptRecord;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final PaymentRecordObject object;

/// Information about the Payment Method debited for this payment.
final Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?> paymentMethodDetails;

final PaymentsPrimitivesPaymentRecordsResourceProcessorDetails processorDetails;

/// Indicates who reported the payment.
final PaymentRecordReportedBy reportedBy;

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
  if (latestPaymentAttemptRecord.isPresent) 'latest_payment_attempt_record': latestPaymentAttemptRecord.value,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  if (paymentMethodDetails.isPresent) 'payment_method_details': paymentMethodDetails.value?.toJson(),
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
PaymentRecord copyWith({PaymentsPrimitivesPaymentRecordsResourceAmount? amount, PaymentsPrimitivesPaymentRecordsResourceAmount? amountAuthorized, PaymentsPrimitivesPaymentRecordsResourceAmount? amountCanceled, PaymentsPrimitivesPaymentRecordsResourceAmount? amountFailed, PaymentsPrimitivesPaymentRecordsResourceAmount? amountGuaranteed, PaymentsPrimitivesPaymentRecordsResourceAmount? amountRefunded, PaymentsPrimitivesPaymentRecordsResourceAmount? amountRequested, Omittable<String?>? application, int? created, Omittable<PaymentsPrimitivesPaymentRecordsResourceCustomerDetails?>? customerDetails, Omittable<PaymentRecordCustomerPresence?>? customerPresence, Omittable<String?>? description, String? id, Omittable<String?>? latestPaymentAttemptRecord, bool? livemode, Map<String,String>? metadata, PaymentRecordObject? object, Omittable<PaymentsPrimitivesPaymentRecordsResourcePaymentMethodDetails?>? paymentMethodDetails, PaymentsPrimitivesPaymentRecordsResourceProcessorDetails? processorDetails, PaymentRecordReportedBy? reportedBy, Omittable<PaymentsPrimitivesPaymentRecordsResourceShippingDetails?>? shippingDetails, }) { return PaymentRecord(
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
  latestPaymentAttemptRecord: latestPaymentAttemptRecord ?? this.latestPaymentAttemptRecord,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  processorDetails: processorDetails ?? this.processorDetails,
  reportedBy: reportedBy ?? this.reportedBy,
  shippingDetails: shippingDetails ?? this.shippingDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentRecord &&
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
          latestPaymentAttemptRecord == other.latestPaymentAttemptRecord &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          paymentMethodDetails == other.paymentMethodDetails &&
          processorDetails == other.processorDetails &&
          reportedBy == other.reportedBy &&
          shippingDetails == other.shippingDetails; } 
@override int get hashCode { return Object.hashAll([amount, amountAuthorized, amountCanceled, amountFailed, amountGuaranteed, amountRefunded, amountRequested, application, created, customerDetails, customerPresence, description, id, latestPaymentAttemptRecord, livemode, metadata, object, paymentMethodDetails, processorDetails, reportedBy, shippingDetails]); } 
@override String toString() { return 'PaymentRecord(amount: $amount, amountAuthorized: $amountAuthorized, amountCanceled: $amountCanceled, amountFailed: $amountFailed, amountGuaranteed: $amountGuaranteed, amountRefunded: $amountRefunded, amountRequested: $amountRequested, application: $application, created: $created, customerDetails: $customerDetails, customerPresence: $customerPresence, description: $description, id: $id, latestPaymentAttemptRecord: $latestPaymentAttemptRecord, livemode: $livemode, metadata: $metadata, object: $object, paymentMethodDetails: $paymentMethodDetails, processorDetails: $processorDetails, reportedBy: $reportedBy, shippingDetails: $shippingDetails)'; } 
 }
