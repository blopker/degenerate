// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersRequestIndividualNameVariant2 {const PostCustomersRequestIndividualNameVariant2._(this.value);

factory PostCustomersRequestIndividualNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestIndividualNameVariant2._(json),
}; }

static const PostCustomersRequestIndividualNameVariant2 $empty = PostCustomersRequestIndividualNameVariant2._('');

static const List<PostCustomersRequestIndividualNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestIndividualNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestIndividualNameVariant2($value)'; } 
 }
/// The customer's full name. This may be up to *150 characters*.
@immutable
final class PostCustomersRequestIndividualName {
  const PostCustomersRequestIndividualName({this.string = const Omittable.absent(),
this.postCustomersRequestIndividualNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestIndividualName._({required this.rawValue, required this.string,
required this.postCustomersRequestIndividualNameVariant2,});
  factory PostCustomersRequestIndividualName.fromJson(Object? json) => PostCustomersRequestIndividualName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersRequestIndividualNameVariant2: parseAnyOfVariant<PostCustomersRequestIndividualNameVariant2>(json, (value) => PostCustomersRequestIndividualNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersRequestIndividualNameVariant2> postCustomersRequestIndividualNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersRequestIndividualNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersRequestIndividualNameVariant2.isPresent) postCustomersRequestIndividualNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestIndividualName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestIndividualName(${toJson()})';
}
