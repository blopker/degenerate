// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'registration_date_specs3.dart';@immutable final class PostTokensRequestAccountCompanyRegistrationDateVariant2 {const PostTokensRequestAccountCompanyRegistrationDateVariant2._(this.value);

factory PostTokensRequestAccountCompanyRegistrationDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountCompanyRegistrationDateVariant2._(json),
}; }

static const PostTokensRequestAccountCompanyRegistrationDateVariant2 $empty = PostTokensRequestAccountCompanyRegistrationDateVariant2._('');

static const List<PostTokensRequestAccountCompanyRegistrationDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountCompanyRegistrationDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountCompanyRegistrationDateVariant2($value)'; } 
 }

@immutable
final class PostTokensRequestAccountCompanyRegistrationDate {
  const PostTokensRequestAccountCompanyRegistrationDate({this.registrationDateSpecs3 = const Omittable.absent(),
this.postTokensRequestAccountCompanyRegistrationDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestAccountCompanyRegistrationDate._({required this.rawValue, required this.registrationDateSpecs3,
required this.postTokensRequestAccountCompanyRegistrationDateVariant2,});
  factory PostTokensRequestAccountCompanyRegistrationDate.fromJson(Object? json) => PostTokensRequestAccountCompanyRegistrationDate._(
    rawValue: Omittable(json),
    registrationDateSpecs3: parseAnyOfVariant<RegistrationDateSpecs3>(json, (value) => RegistrationDateSpecs3.fromJson(value! as Map<String, dynamic>)),
postTokensRequestAccountCompanyRegistrationDateVariant2: parseAnyOfVariant<PostTokensRequestAccountCompanyRegistrationDateVariant2>(json, (value) => PostTokensRequestAccountCompanyRegistrationDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RegistrationDateSpecs3> registrationDateSpecs3;
final Omittable<PostTokensRequestAccountCompanyRegistrationDateVariant2> postTokensRequestAccountCompanyRegistrationDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => registrationDateSpecs3.isPresent || postTokensRequestAccountCompanyRegistrationDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (registrationDateSpecs3.isPresent) registrationDateSpecs3.value?.toJson(),
if (postTokensRequestAccountCompanyRegistrationDateVariant2.isPresent) postTokensRequestAccountCompanyRegistrationDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestAccountCompanyRegistrationDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestAccountCompanyRegistrationDate(${toJson()})';
}
