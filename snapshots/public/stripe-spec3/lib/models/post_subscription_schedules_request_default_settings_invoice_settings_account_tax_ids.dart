// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds {
  const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestDefaultSettingsInvoiceSettingsAccountTaxIds(${toJson()})';
}
