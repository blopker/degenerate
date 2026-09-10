// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostSubscriptionsRequestInvoiceSettingsAccountTaxIds {
  const PostSubscriptionsRequestInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionsRequestInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionsRequestInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionsRequestInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestInvoiceSettingsAccountTaxIds(${toJson()})';
}
