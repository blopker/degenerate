// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'package_dimensions_specs.dart';import 'post_products_id_request_description.dart';import 'post_products_id_request_images.dart';import 'post_products_id_request_marketing_features.dart';import 'post_products_id_request_marketing_features_variant1.dart';import 'post_products_id_request_metadata.dart';import 'post_products_id_request_package_dimensions.dart';import 'post_products_id_request_tax_code.dart';import 'post_products_id_request_unit_label.dart';import 'post_products_id_request_url.dart';final class PostProductsIdRequest {const PostProductsIdRequest({this.active, this.defaultPrice, this.description, this.expand, this.images, this.marketingFeatures, this.metadata, this.name, this.packageDimensions, this.shippable, this.statementDescriptor, this.taxCode, this.unitLabel, this.url, });

factory PostProductsIdRequest.fromJson(Map<String, dynamic> json) { return PostProductsIdRequest(
  active: json['active'] as bool?,
  defaultPrice: json['default_price'] as String?,
  description: json['description'] != null ? OneOf2.parse(json['description'], fromA: (v) => v as String, fromB: (v) => PostProductsIdRequestDescriptionVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  images: json['images'] != null ? OneOf2.parse(json['images'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostProductsIdRequestImagesVariant2.fromJson(v as String),) : null,
  marketingFeatures: json['marketing_features'] != null ? OneOf2.parse(json['marketing_features'], fromA: (v) => (v as List<dynamic>).map((e) => PostProductsIdRequestMarketingFeaturesVariant1.fromJson(e as Map<String, dynamic>)).toList(), fromB: (v) => PostProductsIdRequestMarketingFeaturesVariant2.fromJson(v as String),) : null,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostProductsIdRequestMetadataVariant2.fromJson(v as String),) : null,
  name: json['name'] as String?,
  packageDimensions: json['package_dimensions'] != null ? OneOf2.parse(json['package_dimensions'], fromA: (v) => PackageDimensionsSpecs.fromJson(v as Map<String, dynamic>), fromB: (v) => PostProductsIdRequestPackageDimensionsVariant2.fromJson(v as String),) : null,
  shippable: json['shippable'] as bool?,
  statementDescriptor: json['statement_descriptor'] as String?,
  taxCode: json['tax_code'] != null ? OneOf2.parse(json['tax_code'], fromA: (v) => v as String, fromB: (v) => PostProductsIdRequestTaxCodeVariant2.fromJson(v as String),) : null,
  unitLabel: json['unit_label'] != null ? OneOf2.parse(json['unit_label'], fromA: (v) => v as String, fromB: (v) => PostProductsIdRequestUnitLabelVariant2.fromJson(v as String),) : null,
  url: json['url'] != null ? OneOf2.parse(json['url'], fromA: (v) => v as String, fromB: (v) => PostProductsIdRequestUrlVariant2.fromJson(v as String),) : null,
); }

/// Whether the product is available for purchase.
final bool? active;

/// The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
final String? defaultPrice;

/// The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
final PostProductsIdRequestDescription? description;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
final PostProductsIdRequestImages? images;

/// A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
final PostProductsIdRequestMarketingFeatures? marketingFeatures;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostProductsIdRequestMetadata? metadata;

/// The product's name, meant to be displayable to the customer.
final String? name;

/// The dimensions of this product for shipping purposes.
final PostProductsIdRequestPackageDimensions? packageDimensions;

/// Whether this product is shipped (i.e., physical goods).
final bool? shippable;

/// An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
/// 
/// This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
///  It must contain at least one letter. May only be set if `type=service`. Only used for subscription payments.
final String? statementDescriptor;

/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
final PostProductsIdRequestTaxCode? taxCode;

/// A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal. May only be set if `type=service`.
final PostProductsIdRequestUnitLabel? unitLabel;

/// A URL of a publicly-accessible webpage for this product.
final PostProductsIdRequestUrl? url;

Map<String, dynamic> toJson() { return {
  'active': ?active,
  'default_price': ?defaultPrice,
  if (description != null) 'description': description?.toJson(),
  'expand': ?expand,
  if (images != null) 'images': images?.toJson(),
  if (marketingFeatures != null) 'marketing_features': marketingFeatures?.toJson(),
  if (metadata != null) 'metadata': metadata?.toJson(),
  'name': ?name,
  if (packageDimensions != null) 'package_dimensions': packageDimensions?.toJson(),
  'shippable': ?shippable,
  'statement_descriptor': ?statementDescriptor,
  if (taxCode != null) 'tax_code': taxCode?.toJson(),
  if (unitLabel != null) 'unit_label': unitLabel?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostProductsIdRequest copyWith({bool Function()? active, String Function()? defaultPrice, PostProductsIdRequestDescription Function()? description, List<String> Function()? expand, PostProductsIdRequestImages Function()? images, PostProductsIdRequestMarketingFeatures Function()? marketingFeatures, PostProductsIdRequestMetadata Function()? metadata, String Function()? name, PostProductsIdRequestPackageDimensions Function()? packageDimensions, bool Function()? shippable, String Function()? statementDescriptor, PostProductsIdRequestTaxCode Function()? taxCode, PostProductsIdRequestUnitLabel Function()? unitLabel, PostProductsIdRequestUrl Function()? url, }) { return PostProductsIdRequest(
  active: active != null ? active() : this.active,
  defaultPrice: defaultPrice != null ? defaultPrice() : this.defaultPrice,
  description: description != null ? description() : this.description,
  expand: expand != null ? expand() : this.expand,
  images: images != null ? images() : this.images,
  marketingFeatures: marketingFeatures != null ? marketingFeatures() : this.marketingFeatures,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
  packageDimensions: packageDimensions != null ? packageDimensions() : this.packageDimensions,
  shippable: shippable != null ? shippable() : this.shippable,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  taxCode: taxCode != null ? taxCode() : this.taxCode,
  unitLabel: unitLabel != null ? unitLabel() : this.unitLabel,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsIdRequest &&
          active == other.active &&
          defaultPrice == other.defaultPrice &&
          description == other.description &&
          listEquals(expand, other.expand) &&
          images == other.images &&
          marketingFeatures == other.marketingFeatures &&
          metadata == other.metadata &&
          name == other.name &&
          packageDimensions == other.packageDimensions &&
          shippable == other.shippable &&
          statementDescriptor == other.statementDescriptor &&
          taxCode == other.taxCode &&
          unitLabel == other.unitLabel &&
          url == other.url; } 
@override int get hashCode { return Object.hash(active, defaultPrice, description, Object.hashAll(expand ?? const []), images, marketingFeatures, metadata, name, packageDimensions, shippable, statementDescriptor, taxCode, unitLabel, url); } 
@override String toString() { return 'PostProductsIdRequest(active: $active, defaultPrice: $defaultPrice, description: $description, expand: $expand, images: $images, marketingFeatures: $marketingFeatures, metadata: $metadata, name: $name, packageDimensions: $packageDimensions, shippable: $shippable, statementDescriptor: $statementDescriptor, taxCode: $taxCode, unitLabel: $unitLabel, url: $url)'; } 
 }
