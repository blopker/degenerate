// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs3.dart';@immutable final class PostAccountsAccountPeopleRequestDobVariant2 {const PostAccountsAccountPeopleRequestDobVariant2._(this.value);

factory PostAccountsAccountPeopleRequestDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestDobVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestDobVariant2 $empty = PostAccountsAccountPeopleRequestDobVariant2._('');

static const List<PostAccountsAccountPeopleRequestDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDobVariant2($value)'; } 
 }
/// The person's date of birth.
@immutable
final class PostAccountsAccountPeopleRequestDob {
  const PostAccountsAccountPeopleRequestDob({this.dateOfBirthSpecs3 = const Omittable.absent(),
this.postAccountsAccountPeopleRequestDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeopleRequestDob._({required this.rawValue, required this.dateOfBirthSpecs3,
required this.postAccountsAccountPeopleRequestDobVariant2,});
  factory PostAccountsAccountPeopleRequestDob.fromJson(Object? json) => PostAccountsAccountPeopleRequestDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs3: parseAnyOfVariant<DateOfBirthSpecs3>(json, (value) => DateOfBirthSpecs3.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountPeopleRequestDobVariant2: parseAnyOfVariant<PostAccountsAccountPeopleRequestDobVariant2>(json, (value) => PostAccountsAccountPeopleRequestDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs3> dateOfBirthSpecs3;
final Omittable<PostAccountsAccountPeopleRequestDobVariant2> postAccountsAccountPeopleRequestDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs3.isPresent || postAccountsAccountPeopleRequestDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs3.isPresent) dateOfBirthSpecs3.value?.toJson(),
if (postAccountsAccountPeopleRequestDobVariant2.isPresent) postAccountsAccountPeopleRequestDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeopleRequestDob(${toJson()})';
}
