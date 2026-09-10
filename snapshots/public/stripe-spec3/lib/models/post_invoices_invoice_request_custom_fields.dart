// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_invoice_request_custom_fields_variant1.dart';@immutable final class PostInvoicesInvoiceRequestCustomFieldsVariant2 {const PostInvoicesInvoiceRequestCustomFieldsVariant2._(this.value);

factory PostInvoicesInvoiceRequestCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestCustomFieldsVariant2._(json),
};}

static const PostInvoicesInvoiceRequestCustomFieldsVariant2 $empty = PostInvoicesInvoiceRequestCustomFieldsVariant2._('');

static const List<PostInvoicesInvoiceRequestCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestCustomFieldsVariant2($value)';}
}
/// A list of up to 4 custom fields to be displayed on the invoice. If a value for `custom_fields` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
@immutable
final class PostInvoicesInvoiceRequestCustomFields {
  const PostInvoicesInvoiceRequestCustomFields({this.listPostInvoicesInvoiceRequestCustomFieldsVariant1 = const Omittable.absent(),
this.postInvoicesInvoiceRequestCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestCustomFields._({required this.rawValue, required this.listPostInvoicesInvoiceRequestCustomFieldsVariant1,
required this.postInvoicesInvoiceRequestCustomFieldsVariant2,});
  factory PostInvoicesInvoiceRequestCustomFields.fromJson(Object? json) => PostInvoicesInvoiceRequestCustomFields._(
    rawValue: Omittable(json),
    listPostInvoicesInvoiceRequestCustomFieldsVariant1: parseAnyOfVariant<List<PostInvoicesInvoiceRequestCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesInvoiceRequestCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesInvoiceRequestCustomFieldsVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestCustomFieldsVariant2>(json, (value) => PostInvoicesInvoiceRequestCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesInvoiceRequestCustomFieldsVariant1>> listPostInvoicesInvoiceRequestCustomFieldsVariant1;
final Omittable<PostInvoicesInvoiceRequestCustomFieldsVariant2> postInvoicesInvoiceRequestCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesInvoiceRequestCustomFieldsVariant1.isPresent || postInvoicesInvoiceRequestCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesInvoiceRequestCustomFieldsVariant1.isPresent) listPostInvoicesInvoiceRequestCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesInvoiceRequestCustomFieldsVariant2.isPresent) postInvoicesInvoiceRequestCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestCustomFields(${toJson()})';
}
