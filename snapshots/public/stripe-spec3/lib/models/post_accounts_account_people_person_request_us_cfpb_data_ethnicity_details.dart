// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity {const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._(this.value);

factory PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity.fromJson(String json) { return switch (json) {
  'cuban' => cuban,
  'hispanic_or_latino' => hispanicOrLatino,
  'mexican' => mexican,
  'not_hispanic_or_latino' => notHispanicOrLatino,
  'other_hispanic_or_latino' => otherHispanicOrLatino,
  'prefer_not_to_answer' => preferNotToAnswer,
  'puerto_rican' => puertoRican,
  _ => PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity cuban = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('cuban');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity hispanicOrLatino = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('hispanic_or_latino');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity mexican = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('mexican');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity notHispanicOrLatino = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('not_hispanic_or_latino');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity otherHispanicOrLatino = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('other_hispanic_or_latino');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity preferNotToAnswer = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('prefer_not_to_answer');

static const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity puertoRican = PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity._('puerto_rican');

static const List<PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity> values = [cuban, hispanicOrLatino, mexican, notHispanicOrLatino, otherHispanicOrLatino, preferNotToAnswer, puertoRican];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity($value)'; } 
 }
@immutable final class PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails {const PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails({this.ethnicity, this.ethnicityOther, });

factory PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails(
  ethnicity: (json['ethnicity'] as List<dynamic>?)?.map((e) => PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity.fromJson(e as String)).toList(),
  ethnicityOther: json['ethnicity_other'] as String?,
); }

final List<PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity>? ethnicity;

final String? ethnicityOther;

Map<String, dynamic> toJson() { return {
  if (ethnicity != null) 'ethnicity': ethnicity?.map((e) => e.toJson()).toList(),
  'ethnicity_other': ?ethnicityOther,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ethnicity', 'ethnicity_other'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails copyWith({List<PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetailsEthnicity> Function()? ethnicity, String Function()? ethnicityOther, }) { return PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails(
  ethnicity: ethnicity != null ? ethnicity() : this.ethnicity,
  ethnicityOther: ethnicityOther != null ? ethnicityOther() : this.ethnicityOther,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails &&
          listEquals(ethnicity, other.ethnicity) &&
          ethnicityOther == other.ethnicityOther; } 
@override int get hashCode { return Object.hash(Object.hashAll(ethnicity ?? const []), ethnicityOther); } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestUsCfpbDataEthnicityDetails(ethnicity: $ethnicity, ethnicityOther: $ethnicityOther)'; } 
 }
