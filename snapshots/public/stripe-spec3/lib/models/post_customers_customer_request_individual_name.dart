// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerRequestIndividualNameVariant2 {const PostCustomersCustomerRequestIndividualNameVariant2._(this.value);

factory PostCustomersCustomerRequestIndividualNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestIndividualNameVariant2._(json),
}; }

static const PostCustomersCustomerRequestIndividualNameVariant2 $empty = PostCustomersCustomerRequestIndividualNameVariant2._('');

static const List<PostCustomersCustomerRequestIndividualNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestIndividualNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestIndividualNameVariant2($value)'; } 
 }
/// The customer's full name. This may be up to *150 characters*.
@immutable
final class PostCustomersCustomerRequestIndividualName {
  const PostCustomersCustomerRequestIndividualName({this.string = const Omittable.absent(),
this.postCustomersCustomerRequestIndividualNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestIndividualName._({required this.rawValue, required this.string,
required this.postCustomersCustomerRequestIndividualNameVariant2,});
  factory PostCustomersCustomerRequestIndividualName.fromJson(Object? json) => PostCustomersCustomerRequestIndividualName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersCustomerRequestIndividualNameVariant2: parseAnyOfVariant<PostCustomersCustomerRequestIndividualNameVariant2>(json, (value) => PostCustomersCustomerRequestIndividualNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersCustomerRequestIndividualNameVariant2> postCustomersCustomerRequestIndividualNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersCustomerRequestIndividualNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersCustomerRequestIndividualNameVariant2.isPresent) postCustomersCustomerRequestIndividualNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestIndividualName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestIndividualName(${toJson()})';
}
