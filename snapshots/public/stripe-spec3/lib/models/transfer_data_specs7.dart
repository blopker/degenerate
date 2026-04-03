// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TransferDataSpecs7 {const TransferDataSpecs7({required this.destination, this.amountPercent, });

factory TransferDataSpecs7.fromJson(Map<String, dynamic> json) { return TransferDataSpecs7(
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
TransferDataSpecs7 copyWith({double Function()? amountPercent, String? destination, }) { return TransferDataSpecs7(
  amountPercent: amountPercent != null ? amountPercent() : this.amountPercent,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferDataSpecs7 &&
          amountPercent == other.amountPercent &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amountPercent, destination); } 
@override String toString() { return 'TransferDataSpecs7(amountPercent: $amountPercent, destination: $destination)'; } 
 }
