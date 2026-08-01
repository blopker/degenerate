// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsWechatPay {const PaymentMethodDetailsWechatPay({this.fingerprint = const Omittable.absent(), this.location, this.reader, this.transactionId = const Omittable.absent(), });

factory PaymentMethodDetailsWechatPay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsWechatPay(
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  location: json['location'] as String?,
  reader: json['reader'] as String?,
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

/// Uniquely identifies this particular WeChat Pay account. You can use this attribute to check whether two WeChat accounts are the same.
final Omittable<String?> fingerprint;

/// ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
final String? location;

/// ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
final String? reader;

/// Transaction ID of this particular WeChat Pay transaction.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  'location': ?location,
  'reader': ?reader,
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fingerprint', 'location', 'reader', 'transaction_id'}.contains(key)); } 
PaymentMethodDetailsWechatPay copyWith({Omittable<String?>? fingerprint, String? Function()? location, String? Function()? reader, Omittable<String?>? transactionId, }) { return PaymentMethodDetailsWechatPay(
  fingerprint: fingerprint ?? this.fingerprint,
  location: location != null ? location() : this.location,
  reader: reader != null ? reader() : this.reader,
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsWechatPay &&
          fingerprint == other.fingerprint &&
          location == other.location &&
          reader == other.reader &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(fingerprint, location, reader, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsWechatPay(fingerprint: $fingerprint, location: $location, reader: $reader, transactionId: $transactionId)'; } 
 }
