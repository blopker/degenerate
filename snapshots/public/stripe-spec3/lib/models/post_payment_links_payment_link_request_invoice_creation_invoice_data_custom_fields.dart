// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_invoice_creation_invoice_data_custom_fields_variant1.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 $empty = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2($value)'; } 
 }

@immutable
final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields {
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields({this.listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields._({required this.rawValue, required this.listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1,
required this.postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields._(
    rawValue: Omittable(json),
    listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1: parseAnyOfVariant<List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>> listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1;
final Omittable<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent || postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent) listPostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent) postPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataCustomFields(${toJson()})';
}
