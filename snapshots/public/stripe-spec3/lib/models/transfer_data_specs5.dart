// GENERATED CODE - DO NOT MODIFY BY HAND

final class TransferDataSpecs5 {const TransferDataSpecs5({this.amountPercent, required this.destination, });

factory TransferDataSpecs5.fromJson(Map<String, dynamic> json) { return TransferDataSpecs5(
  amountPercent: json['amount_percent'] != null ? (json['amount_percent'] as num).toDouble() : null,
  destination: json['destination'] as String,
); }

final double? amountPercent;

final String destination;

Map<String, dynamic> toJson() { return {
  'amount_percent': ?amountPercent,
  'destination': destination,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination') && json['destination'] is String; } 
TransferDataSpecs5 copyWith({double Function()? amountPercent, String? destination, }) { return TransferDataSpecs5(
  amountPercent: amountPercent != null ? amountPercent() : this.amountPercent,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferDataSpecs5 &&
          amountPercent == other.amountPercent &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amountPercent, destination); } 
@override String toString() { return 'TransferDataSpecs5(amountPercent: $amountPercent, destination: $destination)'; } 
 }
