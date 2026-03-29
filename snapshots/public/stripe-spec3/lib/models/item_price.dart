// GENERATED CODE - DO NOT MODIFY BY HAND

import 'price.dart';/// The price used to generate the line item.
final class ItemPrice {const ItemPrice({this.price});

factory ItemPrice.fromJson(Map<String, dynamic> json) { return ItemPrice(
  price: Price.canParse(json) ? Price.fromJson(json) : null,
); }

final Price? price;

/// At least one variant must be present.
bool get isValid { return price != null; } 
Map<String, dynamic> toJson() { return {
  ...?price?.toJson(),
}; } 
 }
