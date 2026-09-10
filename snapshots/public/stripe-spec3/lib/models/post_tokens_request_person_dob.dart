// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs8.dart';@immutable final class PostTokensRequestPersonDobVariant2 {const PostTokensRequestPersonDobVariant2._(this.value);

factory PostTokensRequestPersonDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonDobVariant2._(json),
}; }

static const PostTokensRequestPersonDobVariant2 $empty = PostTokensRequestPersonDobVariant2._('');

static const List<PostTokensRequestPersonDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonDobVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestPersonDob {
  const PostTokensRequestPersonDob({this.dateOfBirthSpecs8 = const Omittable.absent(),
this.postTokensRequestPersonDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestPersonDob._({required this.rawValue, required this.dateOfBirthSpecs8,
required this.postTokensRequestPersonDobVariant2,});
  factory PostTokensRequestPersonDob.fromJson(Object? json) => PostTokensRequestPersonDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs8: parseAnyOfVariant<DateOfBirthSpecs8>(json, (value) => DateOfBirthSpecs8.fromJson(value! as Map<String, dynamic>)),
postTokensRequestPersonDobVariant2: parseAnyOfVariant<PostTokensRequestPersonDobVariant2>(json, (value) => PostTokensRequestPersonDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs8> dateOfBirthSpecs8;
final Omittable<PostTokensRequestPersonDobVariant2> postTokensRequestPersonDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs8.isPresent || postTokensRequestPersonDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs8.isPresent) dateOfBirthSpecs8.value?.toJson(),
if (postTokensRequestPersonDobVariant2.isPresent) postTokensRequestPersonDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestPersonDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestPersonDob(${toJson()})';
}
