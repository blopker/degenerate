// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_shipping4.dart';import 'optional_fields_address.dart';import 'post_invoices_create_preview_request_customer_details_address.dart';import 'post_invoices_create_preview_request_customer_details_shipping.dart';import 'post_invoices_create_preview_request_customer_details_tax.dart';import 'post_invoices_create_preview_request_customer_details_tax_ids.dart';final class PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt {const PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._(this.value);

factory PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt.fromJson(String json) { return switch (json) {
  '' => $empty,
  'exempt' => exempt,
  'none' => none,
  'reverse' => reverse,
  _ => PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._(json),
}; }

static const PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt $empty = PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._('');

static const PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt exempt = PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._('exempt');

static const PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt none = PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._('none');

static const PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt reverse = PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt._('reverse');

static const List<PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt> values = [$empty, exempt, none, reverse];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt($value)'; } 
 }
/// Details about the customer you want to invoice or overrides for an existing customer. If `automatic_tax` is enabled then one of `customer`, `customer_details`, `subscription`, or `schedule` must be set.
final class PostInvoicesCreatePreviewRequestCustomerDetails {const PostInvoicesCreatePreviewRequestCustomerDetails({this.address, this.shipping, this.tax, this.taxExempt, this.taxIds, });

factory PostInvoicesCreatePreviewRequestCustomerDetails.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestCustomerDetails(
  address: json['address'] != null ? OneOf2.parse(json['address'], fromA: (v) => OptionalFieldsAddress.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.fromJson(v as String),) : null,
  shipping: json['shipping'] != null ? OneOf2.parse(json['shipping'], fromA: (v) => CustomerShipping4.fromJson(v as Map<String, dynamic>), fromB: (v) => PostInvoicesCreatePreviewRequestCustomerDetailsShippingVariant2.fromJson(v as String),) : null,
  tax: json['tax'] != null ? PostInvoicesCreatePreviewRequestCustomerDetailsTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
  taxExempt: json['tax_exempt'] != null ? PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt.fromJson(json['tax_exempt'] as String) : null,
  taxIds: (json['tax_ids'] as List<dynamic>?)?.map((e) => PostInvoicesCreatePreviewRequestCustomerDetailsTaxIds.fromJson(e as Map<String, dynamic>)).toList(),
); }

final PostInvoicesCreatePreviewRequestCustomerDetailsAddress? address;

final PostInvoicesCreatePreviewRequestCustomerDetailsShipping? shipping;

final PostInvoicesCreatePreviewRequestCustomerDetailsTax? tax;

final PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt? taxExempt;

final List<PostInvoicesCreatePreviewRequestCustomerDetailsTaxIds>? taxIds;

Map<String, dynamic> toJson() { return {
  if (address != null) 'address': address?.toJson(),
  if (shipping != null) 'shipping': shipping?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
  if (taxExempt != null) 'tax_exempt': taxExempt?.toJson(),
  if (taxIds != null) 'tax_ids': taxIds?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostInvoicesCreatePreviewRequestCustomerDetails copyWith({PostInvoicesCreatePreviewRequestCustomerDetailsAddress Function()? address, PostInvoicesCreatePreviewRequestCustomerDetailsShipping Function()? shipping, PostInvoicesCreatePreviewRequestCustomerDetailsTax Function()? tax, PostInvoicesCreatePreviewRequestCustomerDetailsTaxExempt Function()? taxExempt, List<PostInvoicesCreatePreviewRequestCustomerDetailsTaxIds> Function()? taxIds, }) { return PostInvoicesCreatePreviewRequestCustomerDetails(
  address: address != null ? address() : this.address,
  shipping: shipping != null ? shipping() : this.shipping,
  tax: tax != null ? tax() : this.tax,
  taxExempt: taxExempt != null ? taxExempt() : this.taxExempt,
  taxIds: taxIds != null ? taxIds() : this.taxIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestCustomerDetails &&
          address == other.address &&
          shipping == other.shipping &&
          tax == other.tax &&
          taxExempt == other.taxExempt &&
          listEquals(taxIds, other.taxIds); } 
@override int get hashCode { return Object.hash(address, shipping, tax, taxExempt, Object.hashAll(taxIds ?? const [])); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestCustomerDetails(address: $address, shipping: $shipping, tax: $tax, taxExempt: $taxExempt, taxIds: $taxIds)'; } 
 }
