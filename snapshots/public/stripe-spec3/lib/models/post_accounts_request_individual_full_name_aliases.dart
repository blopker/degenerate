// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestIndividualFullNameAliasesVariant2 {const PostAccountsRequestIndividualFullNameAliasesVariant2._(this.value);

factory PostAccountsRequestIndividualFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestIndividualFullNameAliasesVariant2._(json),
}; }

static const PostAccountsRequestIndividualFullNameAliasesVariant2 $empty = PostAccountsRequestIndividualFullNameAliasesVariant2._('');

static const List<PostAccountsRequestIndividualFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestIndividualFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestIndividualFullNameAliasesVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestIndividualFullNameAliases {
  const PostAccountsRequestIndividualFullNameAliases({this.listString = const Omittable.absent(),
this.postAccountsRequestIndividualFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestIndividualFullNameAliases._({required this.rawValue, required this.listString,
required this.postAccountsRequestIndividualFullNameAliasesVariant2,});
  factory PostAccountsRequestIndividualFullNameAliases.fromJson(Object? json) => PostAccountsRequestIndividualFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postAccountsRequestIndividualFullNameAliasesVariant2: parseAnyOfVariant<PostAccountsRequestIndividualFullNameAliasesVariant2>(json, (value) => PostAccountsRequestIndividualFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostAccountsRequestIndividualFullNameAliasesVariant2> postAccountsRequestIndividualFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postAccountsRequestIndividualFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postAccountsRequestIndividualFullNameAliasesVariant2.isPresent) postAccountsRequestIndividualFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestIndividualFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestIndividualFullNameAliases(${toJson()})';
}
