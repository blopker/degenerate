// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestFullNameAliasesVariant2 {const PostAccountsAccountPeopleRequestFullNameAliasesVariant2._(this.value);

factory PostAccountsAccountPeopleRequestFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestFullNameAliasesVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestFullNameAliasesVariant2 $empty = PostAccountsAccountPeopleRequestFullNameAliasesVariant2._('');

static const List<PostAccountsAccountPeopleRequestFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestFullNameAliasesVariant2($value)'; } 
 }
/// A list of alternate names or aliases that the person is known by.
@immutable
final class PostAccountsAccountPeopleRequestFullNameAliases {
  const PostAccountsAccountPeopleRequestFullNameAliases({this.listString = const Omittable.absent(),
this.postAccountsAccountPeopleRequestFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestFullNameAliases._({required this.rawValue, required this.listString,
required this.postAccountsAccountPeopleRequestFullNameAliasesVariant2,});
  factory PostAccountsAccountPeopleRequestFullNameAliases.fromJson(Object? json) => PostAccountsAccountPeopleRequestFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsAccountPeopleRequestFullNameAliasesVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestFullNameAliasesVariant2>(json, (value) => PostAccountsAccountPeopleRequestFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsAccountPeopleRequestFullNameAliasesVariant2> postAccountsAccountPeopleRequestFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsAccountPeopleRequestFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsAccountPeopleRequestFullNameAliasesVariant2.isPresent) postAccountsAccountPeopleRequestFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestFullNameAliases(${toJson()})';
}
