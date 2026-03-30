// GENERATED CODE - DO NOT MODIFY BY HAND

import 'terminal_reader_reader_resource_cart.dart';/// Type of information to be displayed by the reader. Only `cart` is currently supported.
final class TerminalReaderReaderResourceSetReaderDisplayActionType {const TerminalReaderReaderResourceSetReaderDisplayActionType._(this.value);

factory TerminalReaderReaderResourceSetReaderDisplayActionType.fromJson(String json) { return switch (json) {
  'cart' => cart,
  _ => TerminalReaderReaderResourceSetReaderDisplayActionType._(json),
}; }

static const TerminalReaderReaderResourceSetReaderDisplayActionType cart = TerminalReaderReaderResourceSetReaderDisplayActionType._('cart');

static const List<TerminalReaderReaderResourceSetReaderDisplayActionType> values = [cart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderReaderResourceSetReaderDisplayActionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceSetReaderDisplayActionType($value)'; } 
 }
/// Represents a reader action to set the reader display
final class TerminalReaderReaderResourceSetReaderDisplayAction {const TerminalReaderReaderResourceSetReaderDisplayAction({this.cart, required this.type, });

factory TerminalReaderReaderResourceSetReaderDisplayAction.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceSetReaderDisplayAction(
  cart: json['cart'] != null ? TerminalReaderReaderResourceCart.fromJson(json['cart'] as Map<String, dynamic>) : null,
  type: TerminalReaderReaderResourceSetReaderDisplayActionType.fromJson(json['type'] as String),
); }

/// Cart object to be displayed by the reader, including line items, amounts, and currency.
final TerminalReaderReaderResourceCart? cart;

/// Type of information to be displayed by the reader. Only `cart` is currently supported.
final TerminalReaderReaderResourceSetReaderDisplayActionType type;

Map<String, dynamic> toJson() { return {
  if (cart != null) 'cart': cart?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TerminalReaderReaderResourceSetReaderDisplayAction copyWith({TerminalReaderReaderResourceCart? Function()? cart, TerminalReaderReaderResourceSetReaderDisplayActionType? type, }) { return TerminalReaderReaderResourceSetReaderDisplayAction(
  cart: cart != null ? cart() : this.cart,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceSetReaderDisplayAction &&
          cart == other.cart &&
          type == other.type; } 
@override int get hashCode { return Object.hash(cart, type); } 
@override String toString() { return 'TerminalReaderReaderResourceSetReaderDisplayAction(cart: $cart, type: $type)'; } 
 }
