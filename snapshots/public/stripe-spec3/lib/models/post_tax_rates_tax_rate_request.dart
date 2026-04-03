// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_rates_tax_rate_request_metadata.dart';/// The high-level tax type, such as `vat` or `sales_tax`.
@immutable final class PostTaxRatesTaxRateRequestTaxType {const PostTaxRatesTaxRateRequestTaxType._(this.value);

factory PostTaxRatesTaxRateRequestTaxType.fromJson(String json) { return switch (json) {
  'amusement_tax' => amusementTax,
  'communications_tax' => communicationsTax,
  'gst' => gst,
  'hst' => hst,
  'igst' => igst,
  'jct' => jct,
  'lease_tax' => leaseTax,
  'pst' => pst,
  'qst' => qst,
  'retail_delivery_fee' => retailDeliveryFee,
  'rst' => rst,
  'sales_tax' => salesTax,
  'service_tax' => serviceTax,
  'vat' => vat,
  _ => PostTaxRatesTaxRateRequestTaxType._(json),
}; }

static const PostTaxRatesTaxRateRequestTaxType amusementTax = PostTaxRatesTaxRateRequestTaxType._('amusement_tax');

static const PostTaxRatesTaxRateRequestTaxType communicationsTax = PostTaxRatesTaxRateRequestTaxType._('communications_tax');

static const PostTaxRatesTaxRateRequestTaxType gst = PostTaxRatesTaxRateRequestTaxType._('gst');

static const PostTaxRatesTaxRateRequestTaxType hst = PostTaxRatesTaxRateRequestTaxType._('hst');

static const PostTaxRatesTaxRateRequestTaxType igst = PostTaxRatesTaxRateRequestTaxType._('igst');

static const PostTaxRatesTaxRateRequestTaxType jct = PostTaxRatesTaxRateRequestTaxType._('jct');

static const PostTaxRatesTaxRateRequestTaxType leaseTax = PostTaxRatesTaxRateRequestTaxType._('lease_tax');

static const PostTaxRatesTaxRateRequestTaxType pst = PostTaxRatesTaxRateRequestTaxType._('pst');

static const PostTaxRatesTaxRateRequestTaxType qst = PostTaxRatesTaxRateRequestTaxType._('qst');

static const PostTaxRatesTaxRateRequestTaxType retailDeliveryFee = PostTaxRatesTaxRateRequestTaxType._('retail_delivery_fee');

static const PostTaxRatesTaxRateRequestTaxType rst = PostTaxRatesTaxRateRequestTaxType._('rst');

static const PostTaxRatesTaxRateRequestTaxType salesTax = PostTaxRatesTaxRateRequestTaxType._('sales_tax');

static const PostTaxRatesTaxRateRequestTaxType serviceTax = PostTaxRatesTaxRateRequestTaxType._('service_tax');

static const PostTaxRatesTaxRateRequestTaxType vat = PostTaxRatesTaxRateRequestTaxType._('vat');

static const List<PostTaxRatesTaxRateRequestTaxType> values = [amusementTax, communicationsTax, gst, hst, igst, jct, leaseTax, pst, qst, retailDeliveryFee, rst, salesTax, serviceTax, vat];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRatesTaxRateRequestTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRatesTaxRateRequestTaxType($value)'; } 
 }
@immutable final class PostTaxRatesTaxRateRequest {const PostTaxRatesTaxRateRequest({this.active, this.country, this.description, this.displayName, this.expand, this.jurisdiction, this.metadata, this.state, this.taxType, });

factory PostTaxRatesTaxRateRequest.fromJson(Map<String, dynamic> json) { return PostTaxRatesTaxRateRequest(
  active: json['active'] as bool?,
  country: json['country'] as String?,
  description: json['description'] as String?,
  displayName: json['display_name'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jurisdiction: json['jurisdiction'] as String?,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostTaxRatesTaxRateRequestMetadataVariant2.fromJson(v as String),) : null,
  state: json['state'] as String?,
  taxType: json['tax_type'] != null ? PostTaxRatesTaxRateRequestTaxType.fromJson(json['tax_type'] as String) : null,
); }

/// Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
final bool? active;

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final String? country;

/// An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
final String? description;

/// The display name of the tax rate, which will be shown to users.
final String? displayName;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
final String? jurisdiction;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostTaxRatesTaxRateRequestMetadata? metadata;

/// [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2), without country prefix. For example, "NY" for New York, United States.
final String? state;

/// The high-level tax type, such as `vat` or `sales_tax`.
final PostTaxRatesTaxRateRequestTaxType? taxType;

Map<String, dynamic> toJson() { return {
  'active': ?active,
  'country': ?country,
  'description': ?description,
  'display_name': ?displayName,
  'expand': ?expand,
  'jurisdiction': ?jurisdiction,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'state': ?state,
  if (taxType != null) 'tax_type': taxType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'active', 'country', 'description', 'display_name', 'expand', 'jurisdiction', 'metadata', 'state', 'tax_type'}.contains(key)); } 
PostTaxRatesTaxRateRequest copyWith({bool Function()? active, String Function()? country, String Function()? description, String Function()? displayName, List<String> Function()? expand, String Function()? jurisdiction, PostTaxRatesTaxRateRequestMetadata Function()? metadata, String Function()? state, PostTaxRatesTaxRateRequestTaxType Function()? taxType, }) { return PostTaxRatesTaxRateRequest(
  active: active != null ? active() : this.active,
  country: country != null ? country() : this.country,
  description: description != null ? description() : this.description,
  displayName: displayName != null ? displayName() : this.displayName,
  expand: expand != null ? expand() : this.expand,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  metadata: metadata != null ? metadata() : this.metadata,
  state: state != null ? state() : this.state,
  taxType: taxType != null ? taxType() : this.taxType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRatesTaxRateRequest &&
          active == other.active &&
          country == other.country &&
          description == other.description &&
          displayName == other.displayName &&
          listEquals(expand, other.expand) &&
          jurisdiction == other.jurisdiction &&
          metadata == other.metadata &&
          state == other.state &&
          taxType == other.taxType; } 
@override int get hashCode { return Object.hash(active, country, description, displayName, Object.hashAll(expand ?? const []), jurisdiction, metadata, state, taxType); } 
@override String toString() { return 'PostTaxRatesTaxRateRequest(active: $active, country: $country, description: $description, displayName: $displayName, expand: $expand, jurisdiction: $jurisdiction, metadata: $metadata, state: $state, taxType: $taxType)'; } 
 }
