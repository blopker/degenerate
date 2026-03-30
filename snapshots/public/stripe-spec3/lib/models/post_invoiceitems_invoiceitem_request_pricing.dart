// GENERATED CODE - DO NOT MODIFY BY HAND

/// The pricing information for the invoice item.
final class PostInvoiceitemsInvoiceitemRequestPricing {const PostInvoiceitemsInvoiceitemRequestPricing({this.price});

factory PostInvoiceitemsInvoiceitemRequestPricing.fromJson(Map<String, dynamic> json) { return PostInvoiceitemsInvoiceitemRequestPricing(
  price: json['price'] as String?,
); }

final String? price;

Map<String, dynamic> toJson() { return {
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'price'}.contains(key)); } 
PostInvoiceitemsInvoiceitemRequestPricing copyWith({String Function()? price}) { return PostInvoiceitemsInvoiceitemRequestPricing(
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoiceitemsInvoiceitemRequestPricing &&
          price == other.price; } 
@override int get hashCode { return price.hashCode; } 
@override String toString() { return 'PostInvoiceitemsInvoiceitemRequestPricing(price: $price)'; } 
 }
