// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs.dart';@immutable final class PostAccountsRequestIndividualDobVariant2 {const PostAccountsRequestIndividualDobVariant2._(this.value);

factory PostAccountsRequestIndividualDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestIndividualDobVariant2._(json),
}; }

static const PostAccountsRequestIndividualDobVariant2 $empty = PostAccountsRequestIndividualDobVariant2._('');

static const List<PostAccountsRequestIndividualDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestIndividualDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestIndividualDobVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestIndividualDob {
  const PostAccountsRequestIndividualDob({this.dateOfBirthSpecs = const Omittable.absent(),
this.postAccountsRequestIndividualDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestIndividualDob._({required this.rawValue, required this.dateOfBirthSpecs,
required this.postAccountsRequestIndividualDobVariant2,});
  factory PostAccountsRequestIndividualDob.fromJson(Object? json) => PostAccountsRequestIndividualDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs: parseAnyOfVariant<DateOfBirthSpecs>(json, (value) => DateOfBirthSpecs.fromJson(value! as Map<String, dynamic>)),
postAccountsRequestIndividualDobVariant2: parseAnyOfVariant<PostAccountsRequestIndividualDobVariant2>(json, (value) => PostAccountsRequestIndividualDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs> dateOfBirthSpecs;
final Omittable<PostAccountsRequestIndividualDobVariant2> postAccountsRequestIndividualDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs.isPresent || postAccountsRequestIndividualDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs.isPresent) dateOfBirthSpecs.value?.toJson(),
if (postAccountsRequestIndividualDobVariant2.isPresent) postAccountsRequestIndividualDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestIndividualDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestIndividualDob(${toJson()})';
}
