// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestBusinessProfileSupportUrlVariant2 {const PostAccountsRequestBusinessProfileSupportUrlVariant2._(this.value);

factory PostAccountsRequestBusinessProfileSupportUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestBusinessProfileSupportUrlVariant2._(json),
}; }

static const PostAccountsRequestBusinessProfileSupportUrlVariant2 $empty = PostAccountsRequestBusinessProfileSupportUrlVariant2._('');

static const List<PostAccountsRequestBusinessProfileSupportUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestBusinessProfileSupportUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestBusinessProfileSupportUrlVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestBusinessProfileSupportUrl {
  const PostAccountsRequestBusinessProfileSupportUrl({this.string = const Omittable.absent(),
this.postAccountsRequestBusinessProfileSupportUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestBusinessProfileSupportUrl._({required this.rawValue, required this.string,
required this.postAccountsRequestBusinessProfileSupportUrlVariant2,});
  factory PostAccountsRequestBusinessProfileSupportUrl.fromJson(Object? json) => PostAccountsRequestBusinessProfileSupportUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsRequestBusinessProfileSupportUrlVariant2: parseAnyOfVariant<PostAccountsRequestBusinessProfileSupportUrlVariant2>(json, (value) => PostAccountsRequestBusinessProfileSupportUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsRequestBusinessProfileSupportUrlVariant2> postAccountsRequestBusinessProfileSupportUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsRequestBusinessProfileSupportUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsRequestBusinessProfileSupportUrlVariant2.isPresent) postAccountsRequestBusinessProfileSupportUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestBusinessProfileSupportUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestBusinessProfileSupportUrl(${toJson()})';
}
