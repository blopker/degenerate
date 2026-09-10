// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestIndividualMetadataVariant2 {const PostAccountsAccountRequestIndividualMetadataVariant2._(this.value);

factory PostAccountsAccountRequestIndividualMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestIndividualMetadataVariant2._(json),
}; }

static const PostAccountsAccountRequestIndividualMetadataVariant2 $empty = PostAccountsAccountRequestIndividualMetadataVariant2._('');

static const List<PostAccountsAccountRequestIndividualMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestIndividualMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestIndividualMetadataVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountRequestIndividualMetadata {
  const PostAccountsAccountRequestIndividualMetadata({this.mapStringString = const Omittable.absent(),
this.postAccountsAccountRequestIndividualMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestIndividualMetadata._({required this.rawValue, required this.mapStringString,
required this.postAccountsAccountRequestIndividualMetadataVariant2,});
  factory PostAccountsAccountRequestIndividualMetadata.fromJson(Object? json) => PostAccountsAccountRequestIndividualMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postAccountsAccountRequestIndividualMetadataVariant2: parseAnyOfVariant<PostAccountsAccountRequestIndividualMetadataVariant2>(json, (value) => PostAccountsAccountRequestIndividualMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostAccountsAccountRequestIndividualMetadataVariant2> postAccountsAccountRequestIndividualMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postAccountsAccountRequestIndividualMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postAccountsAccountRequestIndividualMetadataVariant2.isPresent) postAccountsAccountRequestIndividualMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestIndividualMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestIndividualMetadata(${toJson()})';
}
