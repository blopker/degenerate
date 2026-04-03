// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingNetworkTokenAddress {const IssuingNetworkTokenAddress({required this.line1, required this.postalCode, });

factory IssuingNetworkTokenAddress.fromJson(Map<String, dynamic> json) { return IssuingNetworkTokenAddress(
  line1: json['line1'] as String,
  postalCode: json['postal_code'] as String,
); }

/// The street address of the cardholder tokenizing the card.
final String line1;

/// The postal code of the cardholder tokenizing the card.
final String postalCode;

Map<String, dynamic> toJson() { return {
  'line1': line1,
  'postal_code': postalCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('line1') && json['line1'] is String &&
      json.containsKey('postal_code') && json['postal_code'] is String; } 
IssuingNetworkTokenAddress copyWith({String? line1, String? postalCode, }) { return IssuingNetworkTokenAddress(
  line1: line1 ?? this.line1,
  postalCode: postalCode ?? this.postalCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingNetworkTokenAddress &&
          line1 == other.line1 &&
          postalCode == other.postalCode; } 
@override int get hashCode { return Object.hash(line1, postalCode); } 
@override String toString() { return 'IssuingNetworkTokenAddress(line1: $line1, postalCode: $postalCode)'; } 
 }
