// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_mandate_data.dart';import 'confirmation_tokens_resource_payment_method_options.dart';import 'confirmation_tokens_resource_payment_method_preview.dart';import 'confirmation_tokens_resource_shipping.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ConfirmationTokenObject {const ConfirmationTokenObject._(this.value);

factory ConfirmationTokenObject.fromJson(String json) { return switch (json) {
  'confirmation_token' => confirmationToken,
  _ => ConfirmationTokenObject._(json),
}; }

static const ConfirmationTokenObject confirmationToken = ConfirmationTokenObject._('confirmation_token');

static const List<ConfirmationTokenObject> values = [confirmationToken];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConfirmationTokenObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConfirmationTokenObject($value)'; } 
 }
/// Indicates that you intend to make future payments with this ConfirmationToken's payment method.
/// 
/// The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
@immutable final class ConfirmationTokenSetupFutureUsage {const ConfirmationTokenSetupFutureUsage._(this.value);

factory ConfirmationTokenSetupFutureUsage.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => ConfirmationTokenSetupFutureUsage._(json),
}; }

static const ConfirmationTokenSetupFutureUsage offSession = ConfirmationTokenSetupFutureUsage._('off_session');

static const ConfirmationTokenSetupFutureUsage onSession = ConfirmationTokenSetupFutureUsage._('on_session');

static const List<ConfirmationTokenSetupFutureUsage> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConfirmationTokenSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConfirmationTokenSetupFutureUsage($value)'; } 
 }
/// ConfirmationTokens help transport client side data collected by Stripe JS over
/// to your server for confirming a PaymentIntent or SetupIntent. If the confirmation
/// is successful, values present on the ConfirmationToken are written onto the Intent.
/// 
/// To learn more about how to use ConfirmationToken, visit the related guides:
/// - [Finalize payments on the server](https://docs.stripe.com/payments/finalize-payments-on-the-server)
/// - [Build two-step confirmation](https://docs.stripe.com/payments/build-a-two-step-confirmation).
@immutable final class ConfirmationToken {const ConfirmationToken({required this.created, required this.id, required this.livemode, required this.object, required this.useStripeSdk, this.expiresAt = const Omittable.absent(), this.mandateData = const Omittable.absent(), this.paymentIntent = const Omittable.absent(), this.paymentMethodOptions = const Omittable.absent(), this.paymentMethodPreview = const Omittable.absent(), this.returnUrl = const Omittable.absent(), this.setupFutureUsage = const Omittable.absent(), this.setupIntent = const Omittable.absent(), this.shipping = const Omittable.absent(), });

factory ConfirmationToken.fromJson(Map<String, dynamic> json) { return ConfirmationToken(
  created: (json['created'] as num).toInt(),
  expiresAt: json.containsKey('expires_at') ? Omittable(json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  mandateData: json.containsKey('mandate_data') ? Omittable(json['mandate_data'] != null ? ConfirmationTokensResourceMandateData.fromJson(json['mandate_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  object: ConfirmationTokenObject.fromJson(json['object'] as String),
  paymentIntent: json.containsKey('payment_intent') ? Omittable(json['payment_intent'] as String?) : const Omittable.absent(),
  paymentMethodOptions: json.containsKey('payment_method_options') ? Omittable(json['payment_method_options'] != null ? ConfirmationTokensResourcePaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentMethodPreview: json.containsKey('payment_method_preview') ? Omittable(json['payment_method_preview'] != null ? ConfirmationTokensResourcePaymentMethodPreview.fromJson(json['payment_method_preview'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  returnUrl: json.containsKey('return_url') ? Omittable(json['return_url'] as String?) : const Omittable.absent(),
  setupFutureUsage: json.containsKey('setup_future_usage') ? Omittable(json['setup_future_usage'] != null ? ConfirmationTokenSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null) : const Omittable.absent(),
  setupIntent: json.containsKey('setup_intent') ? Omittable(json['setup_intent'] as String?) : const Omittable.absent(),
  shipping: json.containsKey('shipping') ? Omittable(json['shipping'] != null ? ConfirmationTokensResourceShipping.fromJson(json['shipping'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  useStripeSdk: json['use_stripe_sdk'] as bool,
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Time at which this ConfirmationToken expires and can no longer be used to confirm a PaymentIntent or SetupIntent.
final Omittable<int?> expiresAt;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Data used for generating a Mandate.
final Omittable<ConfirmationTokensResourceMandateData?> mandateData;

/// String representing the object's type. Objects of the same type share the same value.
final ConfirmationTokenObject object;

/// ID of the PaymentIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
final Omittable<String?> paymentIntent;

/// Payment-method-specific configuration for this ConfirmationToken.
final Omittable<ConfirmationTokensResourcePaymentMethodOptions?> paymentMethodOptions;

/// Payment details collected by the Payment Element, used to create a PaymentMethod when a PaymentIntent or SetupIntent is confirmed with this ConfirmationToken.
final Omittable<ConfirmationTokensResourcePaymentMethodPreview?> paymentMethodPreview;

/// Return URL used to confirm the Intent.
final Omittable<String?> returnUrl;

/// Indicates that you intend to make future payments with this ConfirmationToken's payment method.
/// 
/// The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
final Omittable<ConfirmationTokenSetupFutureUsage?> setupFutureUsage;

/// ID of the SetupIntent that this ConfirmationToken was used to confirm, or null if this ConfirmationToken has not yet been used.
final Omittable<String?> setupIntent;

/// Shipping information collected on this ConfirmationToken.
final Omittable<ConfirmationTokensResourceShipping?> shipping;

/// Indicates whether the Stripe SDK is used to handle confirmation flow. Defaults to `true` on ConfirmationToken.
final bool useStripeSdk;

Map<String, dynamic> toJson() { return {
  'created': created,
  if (expiresAt.isPresent) 'expires_at': expiresAt.value,
  'id': id,
  'livemode': livemode,
  if (mandateData.isPresent) 'mandate_data': mandateData.value?.toJson(),
  'object': object.toJson(),
  if (paymentIntent.isPresent) 'payment_intent': paymentIntent.value,
  if (paymentMethodOptions.isPresent) 'payment_method_options': paymentMethodOptions.value?.toJson(),
  if (paymentMethodPreview.isPresent) 'payment_method_preview': paymentMethodPreview.value?.toJson(),
  if (returnUrl.isPresent) 'return_url': returnUrl.value,
  if (setupFutureUsage.isPresent) 'setup_future_usage': setupFutureUsage.value?.toJson(),
  if (setupIntent.isPresent) 'setup_intent': setupIntent.value,
  if (shipping.isPresent) 'shipping': shipping.value?.toJson(),
  'use_stripe_sdk': useStripeSdk,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('use_stripe_sdk') && json['use_stripe_sdk'] is bool; } 
ConfirmationToken copyWith({int? created, Omittable<int?>? expiresAt, String? id, bool? livemode, Omittable<ConfirmationTokensResourceMandateData?>? mandateData, ConfirmationTokenObject? object, Omittable<String?>? paymentIntent, Omittable<ConfirmationTokensResourcePaymentMethodOptions?>? paymentMethodOptions, Omittable<ConfirmationTokensResourcePaymentMethodPreview?>? paymentMethodPreview, Omittable<String?>? returnUrl, Omittable<ConfirmationTokenSetupFutureUsage?>? setupFutureUsage, Omittable<String?>? setupIntent, Omittable<ConfirmationTokensResourceShipping?>? shipping, bool? useStripeSdk, }) { return ConfirmationToken(
  created: created ?? this.created,
  expiresAt: expiresAt ?? this.expiresAt,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  mandateData: mandateData ?? this.mandateData,
  object: object ?? this.object,
  paymentIntent: paymentIntent ?? this.paymentIntent,
  paymentMethodOptions: paymentMethodOptions ?? this.paymentMethodOptions,
  paymentMethodPreview: paymentMethodPreview ?? this.paymentMethodPreview,
  returnUrl: returnUrl ?? this.returnUrl,
  setupFutureUsage: setupFutureUsage ?? this.setupFutureUsage,
  setupIntent: setupIntent ?? this.setupIntent,
  shipping: shipping ?? this.shipping,
  useStripeSdk: useStripeSdk ?? this.useStripeSdk,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationToken &&
          created == other.created &&
          expiresAt == other.expiresAt &&
          id == other.id &&
          livemode == other.livemode &&
          mandateData == other.mandateData &&
          object == other.object &&
          paymentIntent == other.paymentIntent &&
          paymentMethodOptions == other.paymentMethodOptions &&
          paymentMethodPreview == other.paymentMethodPreview &&
          returnUrl == other.returnUrl &&
          setupFutureUsage == other.setupFutureUsage &&
          setupIntent == other.setupIntent &&
          shipping == other.shipping &&
          useStripeSdk == other.useStripeSdk; } 
@override int get hashCode { return Object.hash(created, expiresAt, id, livemode, mandateData, object, paymentIntent, paymentMethodOptions, paymentMethodPreview, returnUrl, setupFutureUsage, setupIntent, shipping, useStripeSdk); } 
@override String toString() { return 'ConfirmationToken(created: $created, expiresAt: $expiresAt, id: $id, livemode: $livemode, mandateData: $mandateData, object: $object, paymentIntent: $paymentIntent, paymentMethodOptions: $paymentMethodOptions, paymentMethodPreview: $paymentMethodPreview, returnUrl: $returnUrl, setupFutureUsage: $setupFutureUsage, setupIntent: $setupIntent, shipping: $shipping, useStripeSdk: $useStripeSdk)'; } 
 }
