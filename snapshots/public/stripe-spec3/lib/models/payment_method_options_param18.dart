// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param18_confirmation_number.dart';import 'payment_method_options_param18_expires_after_days.dart';import 'payment_method_options_param18_expires_at.dart';import 'payment_method_options_param18_product_description.dart';@immutable final class PaymentMethodOptionsParam18SetupFutureUsage {const PaymentMethodOptionsParam18SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam18SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam18SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam18SetupFutureUsage none = PaymentMethodOptionsParam18SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam18SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam18SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam18SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam18 {const PaymentMethodOptionsParam18({this.confirmationNumber, this.expiresAfterDays, this.expiresAt, this.productDescription, this.setupFutureUsage, });

factory PaymentMethodOptionsParam18.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam18(
  confirmationNumber: json['confirmation_number'] != null ? OneOf2.parse(json['confirmation_number'], fromA: (v) => v as String, fromB: (v) => PaymentMethodOptionsParam18ConfirmationNumberVariant2.fromJson(v as String),) : null,
  expiresAfterDays: json['expires_after_days'] != null ? OneOf2.parse(json['expires_after_days'], fromA: (v) => (v as num).toInt(), fromB: (v) => PaymentMethodOptionsParam18ExpiresAfterDaysVariant2.fromJson(v as String),) : null,
  expiresAt: json['expires_at'] != null ? OneOf2.parse(json['expires_at'], fromA: (v) => (v as num).toInt(), fromB: (v) => PaymentMethodOptionsParam18ExpiresAtVariant2.fromJson(v as String),) : null,
  productDescription: json['product_description'] != null ? OneOf2.parse(json['product_description'], fromA: (v) => v as String, fromB: (v) => PaymentMethodOptionsParam18ProductDescriptionVariant2.fromJson(v as String),) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam18SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam18ConfirmationNumber? confirmationNumber;

final PaymentMethodOptionsParam18ExpiresAfterDays? expiresAfterDays;

final PaymentMethodOptionsParam18ExpiresAt? expiresAt;

final PaymentMethodOptionsParam18ProductDescription? productDescription;

final PaymentMethodOptionsParam18SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (confirmationNumber != null) 'confirmation_number': confirmationNumber?.toJson(),
  if (expiresAfterDays != null) 'expires_after_days': expiresAfterDays?.toJson(),
  if (expiresAt != null) 'expires_at': expiresAt?.toJson(),
  if (productDescription != null) 'product_description': productDescription?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'confirmation_number', 'expires_after_days', 'expires_at', 'product_description', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam18 copyWith({PaymentMethodOptionsParam18ConfirmationNumber Function()? confirmationNumber, PaymentMethodOptionsParam18ExpiresAfterDays Function()? expiresAfterDays, PaymentMethodOptionsParam18ExpiresAt Function()? expiresAt, PaymentMethodOptionsParam18ProductDescription Function()? productDescription, PaymentMethodOptionsParam18SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam18(
  confirmationNumber: confirmationNumber != null ? confirmationNumber() : this.confirmationNumber,
  expiresAfterDays: expiresAfterDays != null ? expiresAfterDays() : this.expiresAfterDays,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam18 &&
          confirmationNumber == other.confirmationNumber &&
          expiresAfterDays == other.expiresAfterDays &&
          expiresAt == other.expiresAt &&
          productDescription == other.productDescription &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(confirmationNumber, expiresAfterDays, expiresAt, productDescription, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam18(confirmationNumber: $confirmationNumber, expiresAfterDays: $expiresAfterDays, expiresAt: $expiresAt, productDescription: $productDescription, setupFutureUsage: $setupFutureUsage)'; } 
 }
