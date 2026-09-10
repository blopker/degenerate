// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs2.dart';@immutable final class PostAccountsAccountRequestIndividualDobVariant2 {const PostAccountsAccountRequestIndividualDobVariant2._(this.value);

factory PostAccountsAccountRequestIndividualDobVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestIndividualDobVariant2._(json),
};}

static const PostAccountsAccountRequestIndividualDobVariant2 $empty = PostAccountsAccountRequestIndividualDobVariant2._('');

static const List<PostAccountsAccountRequestIndividualDobVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestIndividualDobVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestIndividualDobVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestIndividualDob {
  const PostAccountsAccountRequestIndividualDob({this.dateOfBirthSpecs2 = const Omittable.absent(),
this.postAccountsAccountRequestIndividualDobVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestIndividualDob._({required this.rawValue, required this.dateOfBirthSpecs2,
required this.postAccountsAccountRequestIndividualDobVariant2,});
  factory PostAccountsAccountRequestIndividualDob.fromJson(Object? json) => PostAccountsAccountRequestIndividualDob._(
    rawValue: Omittable(json),
    dateOfBirthSpecs2: parseAnyOfVariant<DateOfBirthSpecs2>(json, (value) => DateOfBirthSpecs2.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountRequestIndividualDobVariant2: parseAnyOfVariant<PostAccountsAccountRequestIndividualDobVariant2>(json, (value) => PostAccountsAccountRequestIndividualDobVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DateOfBirthSpecs2> dateOfBirthSpecs2;
final Omittable<PostAccountsAccountRequestIndividualDobVariant2> postAccountsAccountRequestIndividualDobVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => dateOfBirthSpecs2.isPresent || postAccountsAccountRequestIndividualDobVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (dateOfBirthSpecs2.isPresent) dateOfBirthSpecs2.value?.toJson(),
if (postAccountsAccountRequestIndividualDobVariant2.isPresent) postAccountsAccountRequestIndividualDobVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestIndividualDob && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestIndividualDob(${toJson()})';
}
