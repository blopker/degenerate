// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a line item to be displayed on the reader
@immutable final class TerminalReaderReaderResourceLineItem {const TerminalReaderReaderResourceLineItem({required this.amount, required this.description, required this.quantity, });

factory TerminalReaderReaderResourceLineItem.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceLineItem(
  amount: (json['amount'] as num).toInt(),
  description: json['description'] as String,
  quantity: (json['quantity'] as num).toInt(),
); }

/// The amount of the line item. A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amount;

/// Description of the line item.
final String description;

/// The quantity of the line item.
final int quantity;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'description': description,
  'quantity': quantity,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('quantity') && json['quantity'] is num; } 
TerminalReaderReaderResourceLineItem copyWith({int? amount, String? description, int? quantity, }) { return TerminalReaderReaderResourceLineItem(
  amount: amount ?? this.amount,
  description: description ?? this.description,
  quantity: quantity ?? this.quantity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceLineItem &&
          amount == other.amount &&
          description == other.description &&
          quantity == other.quantity; } 
@override int get hashCode { return Object.hash(amount, description, quantity); } 
@override String toString() { return 'TerminalReaderReaderResourceLineItem(amount: $amount, description: $description, quantity: $quantity)'; } 
 }
