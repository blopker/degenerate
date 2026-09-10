// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestAccountIndividualFullNameAliasesVariant2 {const PostTokensRequestAccountIndividualFullNameAliasesVariant2._(this.value);

factory PostTokensRequestAccountIndividualFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualFullNameAliasesVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualFullNameAliasesVariant2 $empty = PostTokensRequestAccountIndividualFullNameAliasesVariant2._('');

static const List<PostTokensRequestAccountIndividualFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualFullNameAliasesVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestAccountIndividualFullNameAliases {
  const PostTokensRequestAccountIndividualFullNameAliases({this.listString = const Omittable.absent(),
this.postTokensRequestAccountIndividualFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestAccountIndividualFullNameAliases._({required this.rawValue, required this.listString,
required this.postTokensRequestAccountIndividualFullNameAliasesVariant2,});
  factory PostTokensRequestAccountIndividualFullNameAliases.fromJson(Object? json) => PostTokensRequestAccountIndividualFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postTokensRequestAccountIndividualFullNameAliasesVariant2: parseAnyOfVariant<PostTokensRequestAccountIndividualFullNameAliasesVariant2>(json, (value) => PostTokensRequestAccountIndividualFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostTokensRequestAccountIndividualFullNameAliasesVariant2> postTokensRequestAccountIndividualFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postTokensRequestAccountIndividualFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postTokensRequestAccountIndividualFullNameAliasesVariant2.isPresent) postTokensRequestAccountIndividualFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestAccountIndividualFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestAccountIndividualFullNameAliases(${toJson()})';
}
