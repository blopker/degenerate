// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'registration_date_specs2.dart';@immutable final class PostAccountsAccountRequestCompanyRegistrationDateVariant2 {const PostAccountsAccountRequestCompanyRegistrationDateVariant2._(this.value);

factory PostAccountsAccountRequestCompanyRegistrationDateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestCompanyRegistrationDateVariant2._(json),
};}

static const PostAccountsAccountRequestCompanyRegistrationDateVariant2 $empty = PostAccountsAccountRequestCompanyRegistrationDateVariant2._('');

static const List<PostAccountsAccountRequestCompanyRegistrationDateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestCompanyRegistrationDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestCompanyRegistrationDateVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestCompanyRegistrationDate {
  const PostAccountsAccountRequestCompanyRegistrationDate({this.registrationDateSpecs2 = const Omittable.absent(),
this.postAccountsAccountRequestCompanyRegistrationDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestCompanyRegistrationDate._({required this.rawValue, required this.registrationDateSpecs2,
required this.postAccountsAccountRequestCompanyRegistrationDateVariant2,});
  factory PostAccountsAccountRequestCompanyRegistrationDate.fromJson(Object? json) => PostAccountsAccountRequestCompanyRegistrationDate._(
    rawValue: Omittable(json),
    registrationDateSpecs2: parseAnyOfVariant<RegistrationDateSpecs2>(json, (value) => RegistrationDateSpecs2.fromJson(value! as Map<String, dynamic>)),
postAccountsAccountRequestCompanyRegistrationDateVariant2: parseAnyOfVariant<PostAccountsAccountRequestCompanyRegistrationDateVariant2>(json, (value) => PostAccountsAccountRequestCompanyRegistrationDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RegistrationDateSpecs2> registrationDateSpecs2;
final Omittable<PostAccountsAccountRequestCompanyRegistrationDateVariant2> postAccountsAccountRequestCompanyRegistrationDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => registrationDateSpecs2.isPresent || postAccountsAccountRequestCompanyRegistrationDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (registrationDateSpecs2.isPresent) registrationDateSpecs2.value?.toJson(),
if (postAccountsAccountRequestCompanyRegistrationDateVariant2.isPresent) postAccountsAccountRequestCompanyRegistrationDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestCompanyRegistrationDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestCompanyRegistrationDate(${toJson()})';
}
