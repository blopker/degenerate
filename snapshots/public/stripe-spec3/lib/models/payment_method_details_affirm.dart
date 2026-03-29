// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentMethodDetailsAffirm {const PaymentMethodDetailsAffirm({this.location, this.reader, this.transactionId, });

factory PaymentMethodDetailsAffirm.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAffirm(
  location: json['location'] as String?,
  reader: json['reader'] as String?,
  transactionId: json['transaction_id'] as String?,
); }

/// ID of the [location](https://docs.stripe.com/api/terminal/locations) that this transaction's reader is assigned to.
final String? location;

/// ID of the [reader](https://docs.stripe.com/api/terminal/readers) this transaction was made on.
final String? reader;

/// The Affirm transaction ID associated with this payment.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'location': ?location,
  'reader': ?reader,
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsAffirm copyWith({String Function()? location, String Function()? reader, String? Function()? transactionId, }) { return PaymentMethodDetailsAffirm(
  location: location != null ? location() : this.location,
  reader: reader != null ? reader() : this.reader,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAffirm &&
          location == other.location &&
          reader == other.reader &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(location, reader, transactionId); } 
@override String toString() { return 'PaymentMethodDetailsAffirm(location: $location, reader: $reader, transactionId: $transactionId)'; } 
 }
