// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2 {const PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2._(this.value);

factory PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2._(json),
}; }

static const PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2 $empty = PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2._('');

static const List<PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds {
  const PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds({this.listString = const Omittable.absent(),
this.postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds._({required this.rawValue, required this.listString,
required this.postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2,});
  factory PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds.fromJson(Object? json) => PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2: parseAnyOfVariant<PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2>(json, (value) => PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2> postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.isPresent) postAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds(${toJson()})';
}
