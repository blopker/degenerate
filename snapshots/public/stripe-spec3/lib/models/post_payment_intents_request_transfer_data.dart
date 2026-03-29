// GENERATED CODE - DO NOT MODIFY BY HAND

/// The parameters that you can use to automatically create a Transfer.
/// Learn more about the [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
final class PostPaymentIntentsRequestTransferData {const PostPaymentIntentsRequestTransferData({this.amount, required this.destination, });

factory PostPaymentIntentsRequestTransferData.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestTransferData(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  destination: json['destination'] as String,
); }

final int? amount;

final String destination;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'destination': destination,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination') && json['destination'] is String; } 
PostPaymentIntentsRequestTransferData copyWith({int Function()? amount, String? destination, }) { return PostPaymentIntentsRequestTransferData(
  amount: amount != null ? amount() : this.amount,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestTransferData &&
          amount == other.amount &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amount, destination); } 
@override String toString() { return 'PostPaymentIntentsRequestTransferData(amount: $amount, destination: $destination)'; } 
 }
