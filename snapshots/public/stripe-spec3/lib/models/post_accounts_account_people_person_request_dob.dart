// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs4.dart';@immutable final class PostAccountsAccountPeoplePersonRequestDobVariant2 {const PostAccountsAccountPeoplePersonRequestDobVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDobVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestDobVariant2 $empty = PostAccountsAccountPeoplePersonRequestDobVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDobVariant2($value)'; } 
 }
/// The person's date of birth.
@immutable
final class PostAccountsAccountPeoplePersonRequestDob {
  const PostAccountsAccountPeoplePersonRequestDob({this.dateOfBirthSpecs4 = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestDob._({required this.rawValue, required this.dateOfBirthSpecs4,
required this.postAccountsAccountPeoplePersonRequestDobVariant2,});
  factory PostAccountsAccountPeoplePersonRequestDob.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs4: parseAnyOfVariant<DateOfBirthSpecs4>(json, (value) => DateOfBirthSpecs4.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountPeoplePersonRequestDobVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestDobVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs4> dateOfBirthSpecs4;
final Omittable<PostAccountsAccountPeoplePersonRequestDobVariant2> postAccountsAccountPeoplePersonRequestDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs4.isPresent || postAccountsAccountPeoplePersonRequestDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs4.isPresent) dateOfBirthSpecs4.value?.toJson(),
if (postAccountsAccountPeoplePersonRequestDobVariant2.isPresent) postAccountsAccountPeoplePersonRequestDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestDob(${toJson()})';
}
