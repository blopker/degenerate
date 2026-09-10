// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds {
  const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesInvoiceSettingsAccountTaxIds(${toJson()})';
}
