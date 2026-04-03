// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity {const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._(this.value);

factory PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity.fromJson(String json) { return switch (json) {
  'cuban' => cuban,
  'hispanic_or_latino' => hispanicOrLatino,
  'mexican' => mexican,
  'not_hispanic_or_latino' => notHispanicOrLatino,
  'other_hispanic_or_latino' => otherHispanicOrLatino,
  'prefer_not_to_answer' => preferNotToAnswer,
  'puerto_rican' => puertoRican,
  _ => PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity cuban = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('cuban');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity hispanicOrLatino = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('hispanic_or_latino');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity mexican = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('mexican');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity notHispanicOrLatino = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('not_hispanic_or_latino');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity otherHispanicOrLatino = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('other_hispanic_or_latino');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity preferNotToAnswer = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('prefer_not_to_answer');

static const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity puertoRican = PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity._('puerto_rican');

static const List<PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity> values = [cuban, hispanicOrLatino, mexican, notHispanicOrLatino, otherHispanicOrLatino, preferNotToAnswer, puertoRican];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity($value)'; } 
 }
@immutable final class PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails {const PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails({this.ethnicity, this.ethnicityOther, });

factory PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails(
  ethnicity: (json['ethnicity'] as List<dynamic>?)?.map((e) => PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity.fromJson(e as String)).toList(),
  ethnicityOther: json['ethnicity_other'] as String?,
); }

final List<PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity>? ethnicity;

final String? ethnicityOther;

Map<String, dynamic> toJson() { return {
  if (ethnicity != null) 'ethnicity': ethnicity?.map((e) => e.toJson()).toList(),
  'ethnicity_other': ?ethnicityOther,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity', 'ethnicity_other'}.contains(key)); } 
PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails copyWith({List<PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetailsEthnicity> Function()? ethnicity, String Function()? ethnicityOther, }) { return PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails(
  ethnicity: ethnicity != null ? ethnicity() : this.ethnicity,
  ethnicityOther: ethnicityOther != null ? ethnicityOther() : this.ethnicityOther,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails &&
          listEquals(ethnicity, other.ethnicity) &&
          ethnicityOther == other.ethnicityOther; } 
@override int get hashCode { return Object.hash(Object.hashAll(ethnicity ?? const []), ethnicityOther); } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestUsCfpbDataEthnicityDetails(ethnicity: $ethnicity, ethnicityOther: $ethnicityOther)'; } 
 }
