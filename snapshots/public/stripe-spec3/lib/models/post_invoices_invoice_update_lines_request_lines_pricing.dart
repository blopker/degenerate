// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesInvoiceUpdateLinesRequestLinesPricing {const PostInvoicesInvoiceUpdateLinesRequestLinesPricing({this.price});

factory PostInvoicesInvoiceUpdateLinesRequestLinesPricing.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceUpdateLinesRequestLinesPricing(
  price: json['price'] as String?,
); }

final String? price;

Map<String, dynamic> toJson() { return {
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'price'}.contains(key)); } 
PostInvoicesInvoiceUpdateLinesRequestLinesPricing copyWith({String Function()? price}) { return PostInvoicesInvoiceUpdateLinesRequestLinesPricing(
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesPricing &&
          price == other.price; } 
@override int get hashCode { return price.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesPricing(price: $price)'; } 
 }
