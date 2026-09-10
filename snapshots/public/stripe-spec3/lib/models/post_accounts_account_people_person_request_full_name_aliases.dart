// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 {const PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._(json),
};}

static const PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 $empty = PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2($value)';}
}
/// A list of alternate names or aliases that the person is known by.
@immutable
final class PostAccountsAccountPeoplePersonRequestFullNameAliases {
  const PostAccountsAccountPeoplePersonRequestFullNameAliases({this.listString = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestFullNameAliases._({required this.rawValue, required this.listString,
required this.postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2,});
  factory PostAccountsAccountPeoplePersonRequestFullNameAliases.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2> postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.isPresent) postAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestFullNameAliases(${toJson()})';
}
