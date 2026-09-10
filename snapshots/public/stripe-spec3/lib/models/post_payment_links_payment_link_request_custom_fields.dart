// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_custom_fields_variant1.dart';@immutable final class PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 {const PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._(json),
};}

static const PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 $empty = PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2($value)';}
}
/// Collect additional information from your customer using custom fields. Up to 3 fields are supported. You can't set this parameter if `ui_mode` is `custom`.
@immutable
final class PostPaymentLinksPaymentLinkRequestCustomFields {
  const PostPaymentLinksPaymentLinkRequestCustomFields({this.listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1 = const Omittable.absent(),
this.postPaymentLinksPaymentLinkRequestCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentLinksPaymentLinkRequestCustomFields._({required this.rawValue, required this.listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1,
required this.postPaymentLinksPaymentLinkRequestCustomFieldsVariant2,});
  factory PostPaymentLinksPaymentLinkRequestCustomFields.fromJson(Object? json) => PostPaymentLinksPaymentLinkRequestCustomFields._(
    rawValue: Omittable(json),
    listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1: parseAnyOfVariant<List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postPaymentLinksPaymentLinkRequestCustomFieldsVariant2: parseAnyOfVariant<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2>(json, (value) => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1>> listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1;
final Omittable<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant2> postPaymentLinksPaymentLinkRequestCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1.isPresent || postPaymentLinksPaymentLinkRequestCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1.isPresent) listPostPaymentLinksPaymentLinkRequestCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postPaymentLinksPaymentLinkRequestCustomFieldsVariant2.isPresent) postPaymentLinksPaymentLinkRequestCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentLinksPaymentLinkRequestCustomFields(${toJson()})';
}
