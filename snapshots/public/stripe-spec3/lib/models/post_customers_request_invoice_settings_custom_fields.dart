// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_request_invoice_settings_custom_fields_variant1.dart';@immutable final class PostCustomersRequestInvoiceSettingsCustomFieldsVariant2 {const PostCustomersRequestInvoiceSettingsCustomFieldsVariant2._(this.value);

factory PostCustomersRequestInvoiceSettingsCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestInvoiceSettingsCustomFieldsVariant2._(json),
};}

static const PostCustomersRequestInvoiceSettingsCustomFieldsVariant2 $empty = PostCustomersRequestInvoiceSettingsCustomFieldsVariant2._('');

static const List<PostCustomersRequestInvoiceSettingsCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersRequestInvoiceSettingsCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersRequestInvoiceSettingsCustomFieldsVariant2($value)';}
}

@immutable
final class PostCustomersRequestInvoiceSettingsCustomFields {
  const PostCustomersRequestInvoiceSettingsCustomFields({this.listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1 = const Omittable.absent(),
this.postCustomersRequestInvoiceSettingsCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestInvoiceSettingsCustomFields._({required this.rawValue, required this.listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1,
required this.postCustomersRequestInvoiceSettingsCustomFieldsVariant2,});
  factory PostCustomersRequestInvoiceSettingsCustomFields.fromJson(Object? json) => PostCustomersRequestInvoiceSettingsCustomFields._(
    rawValue: Omittable(json),
    listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1: parseAnyOfVariant<List<PostCustomersRequestInvoiceSettingsCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersRequestInvoiceSettingsCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersRequestInvoiceSettingsCustomFieldsVariant2: parseAnyOfVariant<PostCustomersRequestInvoiceSettingsCustomFieldsVariant2>(json, (value) => PostCustomersRequestInvoiceSettingsCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersRequestInvoiceSettingsCustomFieldsVariant1>> listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1;
final Omittable<PostCustomersRequestInvoiceSettingsCustomFieldsVariant2> postCustomersRequestInvoiceSettingsCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1.isPresent || postCustomersRequestInvoiceSettingsCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1.isPresent) listPostCustomersRequestInvoiceSettingsCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersRequestInvoiceSettingsCustomFieldsVariant2.isPresent) postCustomersRequestInvoiceSettingsCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestInvoiceSettingsCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestInvoiceSettingsCustomFields(${toJson()})';
}
