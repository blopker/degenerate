// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposGetOrgRuleSuitesRuleSuiteResult {const ReposGetOrgRuleSuitesRuleSuiteResult._(this.value);

factory ReposGetOrgRuleSuitesRuleSuiteResult.fromJson(String json) { return switch (json) {
  'pass' => pass,
  'fail' => fail,
  'bypass' => bypass,
  'all' => all,
  _ => ReposGetOrgRuleSuitesRuleSuiteResult._(json),
}; }

static const ReposGetOrgRuleSuitesRuleSuiteResult pass = ReposGetOrgRuleSuitesRuleSuiteResult._('pass');

static const ReposGetOrgRuleSuitesRuleSuiteResult fail = ReposGetOrgRuleSuitesRuleSuiteResult._('fail');

static const ReposGetOrgRuleSuitesRuleSuiteResult bypass = ReposGetOrgRuleSuitesRuleSuiteResult._('bypass');

static const ReposGetOrgRuleSuitesRuleSuiteResult all = ReposGetOrgRuleSuitesRuleSuiteResult._('all');

static const List<ReposGetOrgRuleSuitesRuleSuiteResult> values = [pass, fail, bypass, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetOrgRuleSuitesRuleSuiteResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposGetOrgRuleSuitesRuleSuiteResult($value)'; } 
 }
