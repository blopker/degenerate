// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 {const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 $empty = PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds {
  const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2> postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent) postCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestInvoiceSettingsAccountTaxIds(${toJson()})';
}
