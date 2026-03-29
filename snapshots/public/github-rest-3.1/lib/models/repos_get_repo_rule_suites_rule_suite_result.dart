// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposGetRepoRuleSuitesRuleSuiteResult {const ReposGetRepoRuleSuitesRuleSuiteResult._(this.value);

factory ReposGetRepoRuleSuitesRuleSuiteResult.fromJson(String json) { return switch (json) {
  'pass' => pass,
  'fail' => fail,
  'bypass' => bypass,
  'all' => all,
  _ => ReposGetRepoRuleSuitesRuleSuiteResult._(json),
}; }

static const ReposGetRepoRuleSuitesRuleSuiteResult pass = ReposGetRepoRuleSuitesRuleSuiteResult._('pass');

static const ReposGetRepoRuleSuitesRuleSuiteResult fail = ReposGetRepoRuleSuitesRuleSuiteResult._('fail');

static const ReposGetRepoRuleSuitesRuleSuiteResult bypass = ReposGetRepoRuleSuitesRuleSuiteResult._('bypass');

static const ReposGetRepoRuleSuitesRuleSuiteResult all = ReposGetRepoRuleSuitesRuleSuiteResult._('all');

static const List<ReposGetRepoRuleSuitesRuleSuiteResult> values = [pass, fail, bypass, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetRepoRuleSuitesRuleSuiteResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReposGetRepoRuleSuitesRuleSuiteResult($value)'; } 
 }
