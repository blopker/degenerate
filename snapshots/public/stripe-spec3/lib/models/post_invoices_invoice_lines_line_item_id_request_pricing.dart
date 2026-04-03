// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The pricing information for the invoice item.
@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestPricing {const PostInvoicesInvoiceLinesLineItemIdRequestPricing({this.price});

factory PostInvoicesInvoiceLinesLineItemIdRequestPricing.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceLinesLineItemIdRequestPricing(
  price: json['price'] as String?,
); }

final String? price;

Map<String, dynamic> toJson() { return {
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'price'}.contains(key)); } 
PostInvoicesInvoiceLinesLineItemIdRequestPricing copyWith({String Function()? price}) { return PostInvoicesInvoiceLinesLineItemIdRequestPricing(
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceLinesLineItemIdRequestPricing &&
          price == other.price; } 
@override int get hashCode { return price.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestPricing(price: $price)'; } 
 }
