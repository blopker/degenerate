// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PersonEthnicityDetailsEthnicity {const PersonEthnicityDetailsEthnicity._(this.value);

factory PersonEthnicityDetailsEthnicity.fromJson(String json) { return switch (json) {
  'cuban' => cuban,
  'hispanic_or_latino' => hispanicOrLatino,
  'mexican' => mexican,
  'not_hispanic_or_latino' => notHispanicOrLatino,
  'other_hispanic_or_latino' => otherHispanicOrLatino,
  'prefer_not_to_answer' => preferNotToAnswer,
  'puerto_rican' => puertoRican,
  _ => PersonEthnicityDetailsEthnicity._(json),
}; }

static const PersonEthnicityDetailsEthnicity cuban = PersonEthnicityDetailsEthnicity._('cuban');

static const PersonEthnicityDetailsEthnicity hispanicOrLatino = PersonEthnicityDetailsEthnicity._('hispanic_or_latino');

static const PersonEthnicityDetailsEthnicity mexican = PersonEthnicityDetailsEthnicity._('mexican');

static const PersonEthnicityDetailsEthnicity notHispanicOrLatino = PersonEthnicityDetailsEthnicity._('not_hispanic_or_latino');

static const PersonEthnicityDetailsEthnicity otherHispanicOrLatino = PersonEthnicityDetailsEthnicity._('other_hispanic_or_latino');

static const PersonEthnicityDetailsEthnicity preferNotToAnswer = PersonEthnicityDetailsEthnicity._('prefer_not_to_answer');

static const PersonEthnicityDetailsEthnicity puertoRican = PersonEthnicityDetailsEthnicity._('puerto_rican');

static const List<PersonEthnicityDetailsEthnicity> values = [cuban, hispanicOrLatino, mexican, notHispanicOrLatino, otherHispanicOrLatino, preferNotToAnswer, puertoRican];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PersonEthnicityDetailsEthnicity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PersonEthnicityDetailsEthnicity($value)'; } 
 }
/// 
@immutable final class PersonEthnicityDetails {const PersonEthnicityDetails({this.ethnicity = const Omittable.absent(), this.ethnicityOther = const Omittable.absent(), });

factory PersonEthnicityDetails.fromJson(Map<String, dynamic> json) { return PersonEthnicityDetails(
  ethnicity: json.containsKey('ethnicity') ? Omittable((json['ethnicity'] as List<dynamic>?)?.map((e) => PersonEthnicityDetailsEthnicity.fromJson(e as String)).toList()) : const Omittable.absent(),
  ethnicityOther: json.containsKey('ethnicity_other') ? Omittable(json['ethnicity_other'] as String?) : const Omittable.absent(),
); }

/// The persons ethnicity
final Omittable<List<PersonEthnicityDetailsEthnicity>?> ethnicity;

/// Please specify your origin, when other is selected.
final Omittable<String?> ethnicityOther;

Map<String, dynamic> toJson() { return {
  if (ethnicity.isPresent) 'ethnicity': ethnicity.value?.map((e) => e.toJson()).toList(),
  if (ethnicityOther.isPresent) 'ethnicity_other': ethnicityOther.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity', 'ethnicity_other'}.contains(key)); } 
PersonEthnicityDetails copyWith({Omittable<List<PersonEthnicityDetailsEthnicity>?>? ethnicity, Omittable<String?>? ethnicityOther, }) { return PersonEthnicityDetails(
  ethnicity: ethnicity ?? this.ethnicity,
  ethnicityOther: ethnicityOther ?? this.ethnicityOther,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonEthnicityDetails &&
          ethnicity.isPresent == other.ethnicity.isPresent &&
          listEquals(ethnicity.value, other.ethnicity.value) &&
          ethnicityOther == other.ethnicityOther; } 
@override int get hashCode { return Object.hash(Object.hashAll(ethnicity.value ?? const []), ethnicityOther); } 
@override String toString() { return 'PersonEthnicityDetails(ethnicity: $ethnicity, ethnicityOther: $ethnicityOther)'; } 
 }
