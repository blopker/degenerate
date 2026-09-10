// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_request_invoice_settings_custom_fields_variant1.dart';@immutable final class PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 {const PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._(this.value);

factory PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._(json),
};}

static const PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 $empty = PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._('');

static const List<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerRequestInvoiceSettingsCustomFields {
  const PostCustomersCustomerRequestInvoiceSettingsCustomFields({this.listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1 = const Omittable.absent(),
this.postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestInvoiceSettingsCustomFields._({required this.rawValue, required this.listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1,
required this.postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2,});
  factory PostCustomersCustomerRequestInvoiceSettingsCustomFields.fromJson(Object? json) => PostCustomersCustomerRequestInvoiceSettingsCustomFields._(
    rawValue: Omittable(json),
    listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1: parseAnyOfVariant<List<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2: parseAnyOfVariant<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2>(json, (value) => PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1>> listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1;
final Omittable<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2> postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1.isPresent || postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1.isPresent) listPostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1.value?.map((e) => e.toJson()).toList(),
if (postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.isPresent) postCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestInvoiceSettingsCustomFields && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestInvoiceSettingsCustomFields(${toJson()})';
}
