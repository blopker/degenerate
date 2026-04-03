// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_authorization_amount_details.dart';/// When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
@immutable final class IssuingAuthorizationRequestReason {const IssuingAuthorizationRequestReason._(this.value);

factory IssuingAuthorizationRequestReason.fromJson(String json) { return switch (json) {
  'account_disabled' => accountDisabled,
  'card_active' => cardActive,
  'card_canceled' => cardCanceled,
  'card_expired' => cardExpired,
  'card_inactive' => cardInactive,
  'cardholder_blocked' => cardholderBlocked,
  'cardholder_inactive' => cardholderInactive,
  'cardholder_verification_required' => cardholderVerificationRequired,
  'insecure_authorization_method' => insecureAuthorizationMethod,
  'insufficient_funds' => insufficientFunds,
  'network_fallback' => networkFallback,
  'not_allowed' => notAllowed,
  'pin_blocked' => pinBlocked,
  'spending_controls' => spendingControls,
  'suspected_fraud' => suspectedFraud,
  'verification_failed' => verificationFailed,
  'webhook_approved' => webhookApproved,
  'webhook_declined' => webhookDeclined,
  'webhook_error' => webhookError,
  'webhook_timeout' => webhookTimeout,
  _ => IssuingAuthorizationRequestReason._(json),
}; }

static const IssuingAuthorizationRequestReason accountDisabled = IssuingAuthorizationRequestReason._('account_disabled');

static const IssuingAuthorizationRequestReason cardActive = IssuingAuthorizationRequestReason._('card_active');

static const IssuingAuthorizationRequestReason cardCanceled = IssuingAuthorizationRequestReason._('card_canceled');

static const IssuingAuthorizationRequestReason cardExpired = IssuingAuthorizationRequestReason._('card_expired');

static const IssuingAuthorizationRequestReason cardInactive = IssuingAuthorizationRequestReason._('card_inactive');

static const IssuingAuthorizationRequestReason cardholderBlocked = IssuingAuthorizationRequestReason._('cardholder_blocked');

static const IssuingAuthorizationRequestReason cardholderInactive = IssuingAuthorizationRequestReason._('cardholder_inactive');

static const IssuingAuthorizationRequestReason cardholderVerificationRequired = IssuingAuthorizationRequestReason._('cardholder_verification_required');

static const IssuingAuthorizationRequestReason insecureAuthorizationMethod = IssuingAuthorizationRequestReason._('insecure_authorization_method');

static const IssuingAuthorizationRequestReason insufficientFunds = IssuingAuthorizationRequestReason._('insufficient_funds');

static const IssuingAuthorizationRequestReason networkFallback = IssuingAuthorizationRequestReason._('network_fallback');

static const IssuingAuthorizationRequestReason notAllowed = IssuingAuthorizationRequestReason._('not_allowed');

static const IssuingAuthorizationRequestReason pinBlocked = IssuingAuthorizationRequestReason._('pin_blocked');

static const IssuingAuthorizationRequestReason spendingControls = IssuingAuthorizationRequestReason._('spending_controls');

static const IssuingAuthorizationRequestReason suspectedFraud = IssuingAuthorizationRequestReason._('suspected_fraud');

static const IssuingAuthorizationRequestReason verificationFailed = IssuingAuthorizationRequestReason._('verification_failed');

static const IssuingAuthorizationRequestReason webhookApproved = IssuingAuthorizationRequestReason._('webhook_approved');

static const IssuingAuthorizationRequestReason webhookDeclined = IssuingAuthorizationRequestReason._('webhook_declined');

static const IssuingAuthorizationRequestReason webhookError = IssuingAuthorizationRequestReason._('webhook_error');

static const IssuingAuthorizationRequestReason webhookTimeout = IssuingAuthorizationRequestReason._('webhook_timeout');

static const List<IssuingAuthorizationRequestReason> values = [accountDisabled, cardActive, cardCanceled, cardExpired, cardInactive, cardholderBlocked, cardholderInactive, cardholderVerificationRequired, insecureAuthorizationMethod, insufficientFunds, networkFallback, notAllowed, pinBlocked, spendingControls, suspectedFraud, verificationFailed, webhookApproved, webhookDeclined, webhookError, webhookTimeout];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationRequestReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationRequestReason($value)'; } 
 }
/// 
@immutable final class IssuingAuthorizationRequest {const IssuingAuthorizationRequest({required this.amount, required this.approved, required this.created, required this.currency, required this.merchantAmount, required this.merchantCurrency, required this.reason, this.amountDetails, this.authorizationCode, this.networkRiskScore, this.reasonMessage, this.requestedAt, });

factory IssuingAuthorizationRequest.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationRequest(
  amount: (json['amount'] as num).toInt(),
  amountDetails: json['amount_details'] != null ? IssuingAuthorizationAmountDetails.fromJson(json['amount_details'] as Map<String, dynamic>) : null,
  approved: json['approved'] as bool,
  authorizationCode: json['authorization_code'] as String?,
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  merchantAmount: (json['merchant_amount'] as num).toInt(),
  merchantCurrency: json['merchant_currency'] as String,
  networkRiskScore: json['network_risk_score'] != null ? (json['network_risk_score'] as num).toInt() : null,
  reason: IssuingAuthorizationRequestReason.fromJson(json['reason'] as String),
  reasonMessage: json['reason_message'] as String?,
  requestedAt: json['requested_at'] != null ? (json['requested_at'] as num).toInt() : null,
); }

/// The `pending_request.amount` at the time of the request, presented in your card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
final int amount;

/// Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final IssuingAuthorizationAmountDetails? amountDetails;

/// Whether this request was approved.
final bool approved;

/// A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
final String? authorizationCode;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The `pending_request.merchant_amount` at the time of the request, presented in the `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int merchantAmount;

/// The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String merchantCurrency;

/// The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
final int? networkRiskScore;

/// When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
final IssuingAuthorizationRequestReason reason;

/// If the `request_history.reason` is `webhook_error` because the direct webhook response is invalid (for example, parsing errors or missing parameters), we surface a more detailed error message via this field.
final String? reasonMessage;

/// Time when the card network received an authorization request from the acquirer in UTC. Referred to by networks as transmission time.
final int? requestedAt;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (amountDetails != null) 'amount_details': amountDetails?.toJson(),
  'approved': approved,
  'authorization_code': ?authorizationCode,
  'created': created,
  'currency': currency,
  'merchant_amount': merchantAmount,
  'merchant_currency': merchantCurrency,
  'network_risk_score': ?networkRiskScore,
  'reason': reason.toJson(),
  'reason_message': ?reasonMessage,
  'requested_at': ?requestedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('approved') && json['approved'] is bool &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('merchant_amount') && json['merchant_amount'] is num &&
      json.containsKey('merchant_currency') && json['merchant_currency'] is String &&
      json.containsKey('reason'); } 
IssuingAuthorizationRequest copyWith({int? amount, IssuingAuthorizationAmountDetails? Function()? amountDetails, bool? approved, String? Function()? authorizationCode, int? created, String? currency, int? merchantAmount, String? merchantCurrency, int? Function()? networkRiskScore, IssuingAuthorizationRequestReason? reason, String? Function()? reasonMessage, int? Function()? requestedAt, }) { return IssuingAuthorizationRequest(
  amount: amount ?? this.amount,
  amountDetails: amountDetails != null ? amountDetails() : this.amountDetails,
  approved: approved ?? this.approved,
  authorizationCode: authorizationCode != null ? authorizationCode() : this.authorizationCode,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  merchantAmount: merchantAmount ?? this.merchantAmount,
  merchantCurrency: merchantCurrency ?? this.merchantCurrency,
  networkRiskScore: networkRiskScore != null ? networkRiskScore() : this.networkRiskScore,
  reason: reason ?? this.reason,
  reasonMessage: reasonMessage != null ? reasonMessage() : this.reasonMessage,
  requestedAt: requestedAt != null ? requestedAt() : this.requestedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationRequest &&
          amount == other.amount &&
          amountDetails == other.amountDetails &&
          approved == other.approved &&
          authorizationCode == other.authorizationCode &&
          created == other.created &&
          currency == other.currency &&
          merchantAmount == other.merchantAmount &&
          merchantCurrency == other.merchantCurrency &&
          networkRiskScore == other.networkRiskScore &&
          reason == other.reason &&
          reasonMessage == other.reasonMessage &&
          requestedAt == other.requestedAt; } 
@override int get hashCode { return Object.hash(amount, amountDetails, approved, authorizationCode, created, currency, merchantAmount, merchantCurrency, networkRiskScore, reason, reasonMessage, requestedAt); } 
@override String toString() { return 'IssuingAuthorizationRequest(amount: $amount, amountDetails: $amountDetails, approved: $approved, authorizationCode: $authorizationCode, created: $created, currency: $currency, merchantAmount: $merchantAmount, merchantCurrency: $merchantCurrency, networkRiskScore: $networkRiskScore, reason: $reason, reasonMessage: $reasonMessage, requestedAt: $requestedAt)'; } 
 }
