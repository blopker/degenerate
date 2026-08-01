// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsSwish {const PaymentMethodDetailsSwish({this.fingerprint = const Omittable.absent(), this.paymentReference = const Omittable.absent(), this.verifiedPhoneLast4 = const Omittable.absent(), });

factory PaymentMethodDetailsSwish.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsSwish(
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  paymentReference: json.containsKey('payment_reference') ? Omittable(json['payment_reference'] as String?) : const Omittable.absent(),
  verifiedPhoneLast4: json.containsKey('verified_phone_last4') ? Omittable(json['verified_phone_last4'] as String?) : const Omittable.absent(),
); }

/// Uniquely identifies the payer's Swish account. You can use this attribute to check whether two Swish transactions were paid for by the same payer
final Omittable<String?> fingerprint;

/// Payer bank reference number for the payment
final Omittable<String?> paymentReference;

/// The last four digits of the Swish account phone number
final Omittable<String?> verifiedPhoneLast4;

Map<String, dynamic> toJson() { return {
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (paymentReference.isPresent) 'payment_reference': paymentReference.value,
  if (verifiedPhoneLast4.isPresent) 'verified_phone_last4': verifiedPhoneLast4.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fingerprint', 'payment_reference', 'verified_phone_last4'}.contains(key)); } 
PaymentMethodDetailsSwish copyWith({Omittable<String?>? fingerprint, Omittable<String?>? paymentReference, Omittable<String?>? verifiedPhoneLast4, }) { return PaymentMethodDetailsSwish(
  fingerprint: fingerprint ?? this.fingerprint,
  paymentReference: paymentReference ?? this.paymentReference,
  verifiedPhoneLast4: verifiedPhoneLast4 ?? this.verifiedPhoneLast4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsSwish &&
          fingerprint == other.fingerprint &&
          paymentReference == other.paymentReference &&
          verifiedPhoneLast4 == other.verifiedPhoneLast4; } 
@override int get hashCode { return Object.hash(fingerprint, paymentReference, verifiedPhoneLast4); } 
@override String toString() { return 'PaymentMethodDetailsSwish(fingerprint: $fingerprint, paymentReference: $paymentReference, verifiedPhoneLast4: $verifiedPhoneLast4)'; } 
 }
