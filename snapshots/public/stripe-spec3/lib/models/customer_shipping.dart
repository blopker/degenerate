// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shipping.dart';/// Mailing and shipping address for the customer. Appears on invoices emailed to this customer.
final class CustomerShipping {const CustomerShipping({this.shipping});

factory CustomerShipping.fromJson(Map<String, dynamic> json) { return CustomerShipping(
  shipping: Shipping.canParse(json) ? Shipping.fromJson(json) : null,
); }

final Shipping? shipping;

/// At least one variant must be present.
bool get isValid { return shipping != null; } 
Map<String, dynamic> toJson() { return {
  ...?shipping?.toJson(),
}; } 
 }
