// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_request_invoice_creation_invoice_data_custom_fields_variant1.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(json),
};}

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2($value)';}
}

@immutable
final class PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields {
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields({this.listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1 = const Omittable.absent(),
this.postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields._({required this.rawValue, required this.listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1,
required this.postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2,});
  factory PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields.fromJson(Object? json) => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields._(
    rawValue: Omittable(json),
    listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1: parseAnyOfVariant<List<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2: parseAnyOfVariant<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2>(json, (value) => PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>> listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1;
final Omittable<PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent || postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent) listPostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent) postPaymentLinksRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksRequestInvoiceCreationInvoiceDataCustomFields(${toJson()})';
}
