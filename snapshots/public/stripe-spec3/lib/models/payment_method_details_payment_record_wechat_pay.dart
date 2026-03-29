// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodDetailsPaymentRecordWechatPay {const PaymentMethodDetailsPaymentRecordWechatPay({this.fingerprint, this.location, this.reader, this.transactionId, });

factory PaymentMethodDetailsPaymentRecordWechatPay.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordWechatPay(
  fingerprint: json['fingerprint'] as String?,
  location: json['location'] as String?,
  reader: json['reader'] as String?,
  transactionId: json['transaction_id'] as String?,
); }

/// Uniquely identifies this particular WeChat Pay account. You can use this attribute to check whether two WeChat accounts are the same.
final String? fingerprint;

/// ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
final String? location;

/// ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
final String? reader;

/// Transaction ID of this particular WeChat Pay transaction.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'fingerprint': ?fingerprint,
  'location': ?location,
  'reader': ?reader,
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsPaymentRecordWechatPay copyWith({String? Function()? fingerprint, String Function()? location, String Function()? reader, String? Function()? transactionId, }) { return PaymentMethodDetailsPaymentRecordWechatPay(
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  location: location != null ? location() : this.location,
  reader: reader != null ? reader() : this.reader,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsPaymentRecordWechatPay &&
          fingerprint == other.fingerprint &&
          location == other.location &&
          reader == other.reader &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(fingerprint, location, reader, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordWechatPay(fingerprint: $fingerprint, location: $location, reader: $reader, transactionId: $transactionId)'; } 
 }
