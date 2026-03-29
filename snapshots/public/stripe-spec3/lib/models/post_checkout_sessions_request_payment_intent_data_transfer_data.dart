// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCheckoutSessionsRequestPaymentIntentDataTransferData {const PostCheckoutSessionsRequestPaymentIntentDataTransferData({this.amount, required this.destination, });

factory PostCheckoutSessionsRequestPaymentIntentDataTransferData.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentIntentDataTransferData(
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
PostCheckoutSessionsRequestPaymentIntentDataTransferData copyWith({int Function()? amount, String? destination, }) { return PostCheckoutSessionsRequestPaymentIntentDataTransferData(
  amount: amount != null ? amount() : this.amount,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentIntentDataTransferData &&
          amount == other.amount &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amount, destination); } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentIntentDataTransferData(amount: $amount, destination: $destination)'; } 
 }
