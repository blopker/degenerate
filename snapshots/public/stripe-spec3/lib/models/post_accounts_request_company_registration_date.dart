// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'registration_date_specs.dart';@immutable final class PostAccountsRequestCompanyRegistrationDateVariant2 {const PostAccountsRequestCompanyRegistrationDateVariant2._(this.value);

factory PostAccountsRequestCompanyRegistrationDateVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestCompanyRegistrationDateVariant2._(json),
};}

static const PostAccountsRequestCompanyRegistrationDateVariant2 $empty = PostAccountsRequestCompanyRegistrationDateVariant2._('');

static const List<PostAccountsRequestCompanyRegistrationDateVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsRequestCompanyRegistrationDateVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsRequestCompanyRegistrationDateVariant2($value)';}
}

@immutable
final class PostAccountsRequestCompanyRegistrationDate {
  const PostAccountsRequestCompanyRegistrationDate({this.registrationDateSpecs = const Omittable.absent(),
this.postAccountsRequestCompanyRegistrationDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestCompanyRegistrationDate._({required this.rawValue, required this.registrationDateSpecs,
required this.postAccountsRequestCompanyRegistrationDateVariant2,});
  factory PostAccountsRequestCompanyRegistrationDate.fromJson(Object? json) => PostAccountsRequestCompanyRegistrationDate._(
    rawValue: Omittable(json),
    registrationDateSpecs: parseAnyOfVariant<RegistrationDateSpecs>(json, (value) => RegistrationDateSpecs.fromJson(value! as Map<String, dynamic>)),
postAccountsRequestCompanyRegistrationDateVariant2: parseAnyOfVariant<PostAccountsRequestCompanyRegistrationDateVariant2>(json, (value) => PostAccountsRequestCompanyRegistrationDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RegistrationDateSpecs> registrationDateSpecs;
final Omittable<PostAccountsRequestCompanyRegistrationDateVariant2> postAccountsRequestCompanyRegistrationDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => registrationDateSpecs.isPresent || postAccountsRequestCompanyRegistrationDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (registrationDateSpecs.isPresent) registrationDateSpecs.value?.toJson(),
if (postAccountsRequestCompanyRegistrationDateVariant2.isPresent) postAccountsRequestCompanyRegistrationDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestCompanyRegistrationDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestCompanyRegistrationDate(${toJson()})';
}
