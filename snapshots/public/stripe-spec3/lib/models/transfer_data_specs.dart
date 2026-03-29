// GENERATED CODE - DO NOT MODIFY BY HAND

final class TransferDataSpecs {const TransferDataSpecs({this.amountPercent, required this.destination, });

factory TransferDataSpecs.fromJson(Map<String, dynamic> json) { return TransferDataSpecs(
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
TransferDataSpecs copyWith({double Function()? amountPercent, String? destination, }) { return TransferDataSpecs(
  amountPercent: amountPercent != null ? amountPercent() : this.amountPercent,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferDataSpecs &&
          amountPercent == other.amountPercent &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amountPercent, destination); } 
@override String toString() { return 'TransferDataSpecs(amountPercent: $amountPercent, destination: $destination)'; } 
 }
