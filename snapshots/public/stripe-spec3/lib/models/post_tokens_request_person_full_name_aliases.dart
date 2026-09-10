// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonFullNameAliasesVariant2 {const PostTokensRequestPersonFullNameAliasesVariant2._(this.value);

factory PostTokensRequestPersonFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonFullNameAliasesVariant2._(json),
}; }

static const PostTokensRequestPersonFullNameAliasesVariant2 $empty = PostTokensRequestPersonFullNameAliasesVariant2._('');

static const List<PostTokensRequestPersonFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonFullNameAliasesVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestPersonFullNameAliases {
  const PostTokensRequestPersonFullNameAliases({this.listString = const Omittable.absent(),
this.postTokensRequestPersonFullNameAliasesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonFullNameAliases._({required this.rawValue, required this.listString,
required this.postTokensRequestPersonFullNameAliasesVariant2,});
  factory PostTokensRequestPersonFullNameAliases.fromJson(Object? json) => PostTokensRequestPersonFullNameAliases._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postTokensRequestPersonFullNameAliasesVariant2: parseAnyOfVariant<PostTokensRequestPersonFullNameAliasesVariant2>(json, (value) => PostTokensRequestPersonFullNameAliasesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostTokensRequestPersonFullNameAliasesVariant2> postTokensRequestPersonFullNameAliasesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postTokensRequestPersonFullNameAliasesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postTokensRequestPersonFullNameAliasesVariant2.isPresent) postTokensRequestPersonFullNameAliasesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonFullNameAliases && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonFullNameAliases(${toJson()})';
}
