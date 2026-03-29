// GENERATED CODE - DO NOT MODIFY BY HAND

/// The pricing information for the invoice item.
final class PostInvoiceitemsRequestPricing {const PostInvoiceitemsRequestPricing({this.price});

factory PostInvoiceitemsRequestPricing.fromJson(Map<String, dynamic> json) { return PostInvoiceitemsRequestPricing(
  price: json['price'] as String?,
); }

final String? price;

Map<String, dynamic> toJson() { return {
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoiceitemsRequestPricing copyWith({String Function()? price}) { return PostInvoiceitemsRequestPricing(
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoiceitemsRequestPricing &&
          price == other.price; } 
@override int get hashCode { return price.hashCode; } 
@override String toString() { return 'PostInvoiceitemsRequestPricing(price: $price)'; } 
 }
