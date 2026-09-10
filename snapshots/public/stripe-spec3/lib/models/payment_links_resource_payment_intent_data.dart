// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates when the funds will be captured from the customer's account.
@immutable final class PaymentLinksResourcePaymentIntentDataCaptureMethod {const PaymentLinksResourcePaymentIntentDataCaptureMethod._(this.value);

factory PaymentLinksResourcePaymentIntentDataCaptureMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'automatic_async' => automaticAsync,
  'manual' => manual,
  _ => PaymentLinksResourcePaymentIntentDataCaptureMethod._(json),
}; }

static const PaymentLinksResourcePaymentIntentDataCaptureMethod automatic = PaymentLinksResourcePaymentIntentDataCaptureMethod._('automatic');

static const PaymentLinksResourcePaymentIntentDataCaptureMethod automaticAsync = PaymentLinksResourcePaymentIntentDataCaptureMethod._('automatic_async');

static const PaymentLinksResourcePaymentIntentDataCaptureMethod manual = PaymentLinksResourcePaymentIntentDataCaptureMethod._('manual');

static const List<PaymentLinksResourcePaymentIntentDataCaptureMethod> values = [automatic, automaticAsync, manual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinksResourcePaymentIntentDataCaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinksResourcePaymentIntentDataCaptureMethod($value)'; } 
 }
/// Indicates that you intend to make future payments with the payment method collected during checkout.
@immutable final class PaymentLinksResourcePaymentIntentDataSetupFutureUsage {const PaymentLinksResourcePaymentIntentDataSetupFutureUsage._(this.value);

factory PaymentLinksResourcePaymentIntentDataSetupFutureUsage.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentLinksResourcePaymentIntentDataSetupFutureUsage._(json),
}; }

static const PaymentLinksResourcePaymentIntentDataSetupFutureUsage offSession = PaymentLinksResourcePaymentIntentDataSetupFutureUsage._('off_session');

static const PaymentLinksResourcePaymentIntentDataSetupFutureUsage onSession = PaymentLinksResourcePaymentIntentDataSetupFutureUsage._('on_session');

static const List<PaymentLinksResourcePaymentIntentDataSetupFutureUsage> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentLinksResourcePaymentIntentDataSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentLinksResourcePaymentIntentDataSetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentLinksResourcePaymentIntentData {const PaymentLinksResourcePaymentIntentData({required this.metadata, this.captureMethod = const Omittable.absent(), this.description = const Omittable.absent(), this.setupFutureUsage = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), this.statementDescriptorSuffix = const Omittable.absent(), this.transferGroup = const Omittable.absent(), });

factory PaymentLinksResourcePaymentIntentData.fromJson(Map<String, dynamic> json) { return PaymentLinksResourcePaymentIntentData(
  captureMethod: json.containsKey('capture_method') ? Omittable(json['capture_method'] != null ? PaymentLinksResourcePaymentIntentDataCaptureMethod.fromJson(json['capture_method'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  setupFutureUsage: json.containsKey('setup_future_usage') ? Omittable(json['setup_future_usage'] != null ? PaymentLinksResourcePaymentIntentDataSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
  statementDescriptorSuffix: json.containsKey('statement_descriptor_suffix') ? Omittable(json['statement_descriptor_suffix'] as String?) : const Omittable.absent(),
  transferGroup: json.containsKey('transfer_group') ? Omittable(json['transfer_group'] as String?) : const Omittable.absent(),
); }

/// Indicates when the funds will be captured from the customer's account.
final Omittable<PaymentLinksResourcePaymentIntentDataCaptureMethod?> captureMethod;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on [Payment Intents](https://docs.stripe.com/api/payment_intents) generated from this payment link.
final Map<String,String> metadata;

/// Indicates that you intend to make future payments with the payment method collected during checkout.
final Omittable<PaymentLinksResourcePaymentIntentDataSetupFutureUsage?> setupFutureUsage;

/// For a non-card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge.
final Omittable<String?> statementDescriptor;

/// For a card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge. Concatenated with the account's statement descriptor prefix to form the complete statement descriptor.
final Omittable<String?> statementDescriptorSuffix;

/// A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://docs.stripe.com/connect/separate-charges-and-transfers) for details.
final Omittable<String?> transferGroup;

Map<String, dynamic> toJson() { return {
  if (captureMethod.isPresent) 'capture_method': captureMethod.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  'metadata': metadata,
  if (setupFutureUsage.isPresent) 'setup_future_usage': setupFutureUsage.value?.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
  if (statementDescriptorSuffix.isPresent) 'statement_descriptor_suffix': statementDescriptorSuffix.value,
  if (transferGroup.isPresent) 'transfer_group': transferGroup.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metadata'); } 
PaymentLinksResourcePaymentIntentData copyWith({Omittable<PaymentLinksResourcePaymentIntentDataCaptureMethod?>? captureMethod, Omittable<String?>? description, Map<String,String>? metadata, Omittable<PaymentLinksResourcePaymentIntentDataSetupFutureUsage?>? setupFutureUsage, Omittable<String?>? statementDescriptor, Omittable<String?>? statementDescriptorSuffix, Omittable<String?>? transferGroup, }) { return PaymentLinksResourcePaymentIntentData(
  captureMethod: captureMethod ?? this.captureMethod,
  description: description ?? this.description,
  metadata: metadata ?? this.metadata,
  setupFutureUsage: setupFutureUsage ?? this.setupFutureUsage,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
  statementDescriptorSuffix: statementDescriptorSuffix ?? this.statementDescriptorSuffix,
  transferGroup: transferGroup ?? this.transferGroup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourcePaymentIntentData &&
          captureMethod == other.captureMethod &&
          description == other.description &&
          metadata == other.metadata &&
          setupFutureUsage == other.setupFutureUsage &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorSuffix == other.statementDescriptorSuffix &&
          transferGroup == other.transferGroup; } 
@override int get hashCode { return Object.hash(captureMethod, description, metadata, setupFutureUsage, statementDescriptor, statementDescriptorSuffix, transferGroup); } 
@override String toString() { return 'PaymentLinksResourcePaymentIntentData(captureMethod: $captureMethod, description: $description, metadata: $metadata, setupFutureUsage: $setupFutureUsage, statementDescriptor: $statementDescriptor, statementDescriptorSuffix: $statementDescriptorSuffix, transferGroup: $transferGroup)'; } 
 }
