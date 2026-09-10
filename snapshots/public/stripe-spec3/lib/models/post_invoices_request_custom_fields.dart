// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_request_custom_fields_variant1.dart';@immutable final class PostInvoicesRequestCustomFieldsVariant2 {const PostInvoicesRequestCustomFieldsVariant2._(this.value);

factory PostInvoicesRequestCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestCustomFieldsVariant2._(json),
};}

static const PostInvoicesRequestCustomFieldsVariant2 $empty = PostInvoicesRequestCustomFieldsVariant2._('');

static const List<PostInvoicesRequestCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestCustomFieldsVariant2($value)';}
}
/// A list of up to 4 custom fields to be displayed on the invoice.
@immutable
final class PostInvoicesRequestCustomFields {
  const PostInvoicesRequestCustomFields({this.listPostInvoicesRequestCustomFieldsVariant1 = const Omittable.absent(),
this.postInvoicesRequestCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestCustomFields._({required this.rawValue, required this.listPostInvoicesRequestCustomFieldsVariant1,
required this.postInvoicesRequestCustomFieldsVariant2,});
  factory PostInvoicesRequestCustomFields.fromJson(Object? json) => PostInvoicesRequestCustomFields._(
    rawValue: Omittable(json),
    listPostInvoicesRequestCustomFieldsVariant1: parseAnyOfVariant<List<PostInvoicesRequestCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostInvoicesRequestCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postInvoicesRequestCustomFieldsVariant2: parseAnyOfVariant<PostInvoicesRequestCustomFieldsVariant2>(json, (value) => PostInvoicesRequestCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostInvoicesRequestCustomFieldsVariant1>> listPostInvoicesRequestCustomFieldsVariant1;
final Omittable<PostInvoicesRequestCustomFieldsVariant2> postInvoicesRequestCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostInvoicesRequestCustomFieldsVariant1.isPresent || postInvoicesRequestCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostInvoicesRequestCustomFieldsVariant1.isPresent) listPostInvoicesRequestCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postInvoicesRequestCustomFieldsVariant2.isPresent) postInvoicesRequestCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestCustomFields(${toJson()})';
}
