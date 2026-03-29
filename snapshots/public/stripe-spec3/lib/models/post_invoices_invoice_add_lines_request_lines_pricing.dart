// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesInvoiceAddLinesRequestLinesPricing {const PostInvoicesInvoiceAddLinesRequestLinesPricing({this.price});

factory PostInvoicesInvoiceAddLinesRequestLinesPricing.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceAddLinesRequestLinesPricing(
  price: json['price'] as String?,
); }

final String? price;

Map<String, dynamic> toJson() { return {
  'price': ?price,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoicesInvoiceAddLinesRequestLinesPricing copyWith({String Function()? price}) { return PostInvoicesInvoiceAddLinesRequestLinesPricing(
  price: price != null ? price() : this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceAddLinesRequestLinesPricing &&
          price == other.price; } 
@override int get hashCode { return price.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceAddLinesRequestLinesPricing(price: $price)'; } 
 }
