// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_invoice_creation_invoice_data_custom_fields_variant1.dart';@immutable final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 {const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(this.value);

factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._(json),
}; }

static const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 $empty = PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2._('');

static const List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields {
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields({this.listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1 = const Omittable.absent(),
this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields._({required this.rawValue, required this.listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1,
required this.postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2,});
  factory PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields.fromJson(Object? json) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields._(
    rawValue: Omittable(json),
    listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1: parseAnyOfVariant<List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2>(json, (value) => PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1>> listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1;
final Omittable<PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2> postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent || postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.isPresent) listPostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.isPresent) postCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestInvoiceCreationInvoiceDataCustomFields(${toJson()})';
}
