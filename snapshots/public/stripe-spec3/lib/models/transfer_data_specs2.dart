// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TransferDataSpecs2 {const TransferDataSpecs2({required this.destination, this.amount, });

factory TransferDataSpecs2.fromJson(Map<String, dynamic> json) { return TransferDataSpecs2(
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
TransferDataSpecs2 copyWith({int Function()? amount, String? destination, }) { return TransferDataSpecs2(
  amount: amount != null ? amount() : this.amount,
  destination: destination ?? this.destination,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TransferDataSpecs2 &&
          amount == other.amount &&
          destination == other.destination; } 
@override int get hashCode { return Object.hash(amount, destination); } 
@override String toString() { return 'TransferDataSpecs2(amount: $amount, destination: $destination)'; } 
 }
