// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs5.dart';@immutable final class PostAccountsAccountPersonsRequestDobVariant2 {const PostAccountsAccountPersonsRequestDobVariant2._(this.value);

factory PostAccountsAccountPersonsRequestDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestDobVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestDobVariant2 $empty = PostAccountsAccountPersonsRequestDobVariant2._('');

static const List<PostAccountsAccountPersonsRequestDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestDobVariant2($value)'; } 
 }
/// The person's date of birth.
@immutable
final class PostAccountsAccountPersonsRequestDob {
  const PostAccountsAccountPersonsRequestDob({this.dateOfBirthSpecs5 = const Omittable.absent(),
this.postAccountsAccountPersonsRequestDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestDob._({required this.rawValue, required this.dateOfBirthSpecs5,
required this.postAccountsAccountPersonsRequestDobVariant2,});
  factory PostAccountsAccountPersonsRequestDob.fromJson(Object? json) => PostAccountsAccountPersonsRequestDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs5: parseAnyOfVariant<DateOfBirthSpecs5>(json, (value) => DateOfBirthSpecs5.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountPersonsRequestDobVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestDobVariant2>(json, (value) => PostAccountsAccountPersonsRequestDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs5> dateOfBirthSpecs5;
final Omittable<PostAccountsAccountPersonsRequestDobVariant2> postAccountsAccountPersonsRequestDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs5.isPresent || postAccountsAccountPersonsRequestDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs5.isPresent) dateOfBirthSpecs5.value?.toJson(),
if (postAccountsAccountPersonsRequestDobVariant2.isPresent) postAccountsAccountPersonsRequestDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestDob(${toJson()})';
}
