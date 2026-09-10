// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestFullNameAliasesVariant2 {const PostAccountsAccountPersonsRequestFullNameAliasesVariant2._(this.value);

factory PostAccountsAccountPersonsRequestFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestFullNameAliasesVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestFullNameAliasesVariant2 $empty = PostAccountsAccountPersonsRequestFullNameAliasesVariant2._('');

static const List<PostAccountsAccountPersonsRequestFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestFullNameAliasesVariant2($value)'; } 
 }
/// A list of alternate names or aliases that the person is known by.
@immutable
final class PostAccountsAccountPersonsRequestFullNameAliases {
  const PostAccountsAccountPersonsRequestFullNameAliases({this.listString = const Omittable.absent(),
this.postAccountsAccountPersonsRequestFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestFullNameAliases._({required this.rawValue, required this.listString,
required this.postAccountsAccountPersonsRequestFullNameAliasesVariant2,});
  factory PostAccountsAccountPersonsRequestFullNameAliases.fromJson(Object? json) => PostAccountsAccountPersonsRequestFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsAccountPersonsRequestFullNameAliasesVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestFullNameAliasesVariant2>(json, (value) => PostAccountsAccountPersonsRequestFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsAccountPersonsRequestFullNameAliasesVariant2> postAccountsAccountPersonsRequestFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsAccountPersonsRequestFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsAccountPersonsRequestFullNameAliasesVariant2.isPresent) postAccountsAccountPersonsRequestFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestFullNameAliases(${toJson()})';
}
