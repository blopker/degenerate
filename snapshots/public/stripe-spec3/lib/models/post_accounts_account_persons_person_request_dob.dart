// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs6.dart';@immutable final class PostAccountsAccountPersonsPersonRequestDobVariant2 {const PostAccountsAccountPersonsPersonRequestDobVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestDobVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestDobVariant2._(json),
};}

static const PostAccountsAccountPersonsPersonRequestDobVariant2 $empty = PostAccountsAccountPersonsPersonRequestDobVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestDobVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestDobVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountPersonsPersonRequestDobVariant2($value)';}
}
/// The person's date of birth.
@immutable
final class PostAccountsAccountPersonsPersonRequestDob {
  const PostAccountsAccountPersonsPersonRequestDob({this.dateOfBirthSpecs6 = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestDob._({required this.rawValue, required this.dateOfBirthSpecs6,
required this.postAccountsAccountPersonsPersonRequestDobVariant2,});
  factory PostAccountsAccountPersonsPersonRequestDob.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs6: parseAnyOfVariant<DateOfBirthSpecs6>(json, (value) => DateOfBirthSpecs6.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountPersonsPersonRequestDobVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestDobVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs6> dateOfBirthSpecs6;
final Omittable<PostAccountsAccountPersonsPersonRequestDobVariant2> postAccountsAccountPersonsPersonRequestDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs6.isPresent || postAccountsAccountPersonsPersonRequestDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs6.isPresent) dateOfBirthSpecs6.value?.toJson(),
if (postAccountsAccountPersonsPersonRequestDobVariant2.isPresent) postAccountsAccountPersonsPersonRequestDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestDob(${toJson()})';
}
