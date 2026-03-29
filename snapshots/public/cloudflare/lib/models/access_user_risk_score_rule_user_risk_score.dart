// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AccessUserRiskScoreRuleUserRiskScoreUserRiskScore {const AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._(this.value);

factory AccessUserRiskScoreRuleUserRiskScoreUserRiskScore.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  'unscored' => unscored,
  _ => AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._(json),
}; }

static const AccessUserRiskScoreRuleUserRiskScoreUserRiskScore low = AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._('low');

static const AccessUserRiskScoreRuleUserRiskScoreUserRiskScore medium = AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._('medium');

static const AccessUserRiskScoreRuleUserRiskScoreUserRiskScore high = AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._('high');

static const AccessUserRiskScoreRuleUserRiskScoreUserRiskScore unscored = AccessUserRiskScoreRuleUserRiskScoreUserRiskScore._('unscored');

static const List<AccessUserRiskScoreRuleUserRiskScoreUserRiskScore> values = [low, medium, high, unscored];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessUserRiskScoreRuleUserRiskScoreUserRiskScore && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessUserRiskScoreRuleUserRiskScoreUserRiskScore($value)'; } 
 }
final class AccessUserRiskScoreRuleUserRiskScore {const AccessUserRiskScoreRuleUserRiskScore({required this.userRiskScore});

factory AccessUserRiskScoreRuleUserRiskScore.fromJson(Map<String, dynamic> json) { return AccessUserRiskScoreRuleUserRiskScore(
  userRiskScore: (json['user_risk_score'] as List<dynamic>).map((e) => AccessUserRiskScoreRuleUserRiskScoreUserRiskScore.fromJson(e as String)).toList(),
); }

/// A list of risk score levels to match. Values can be low, medium, high, or unscored.
final List<AccessUserRiskScoreRuleUserRiskScoreUserRiskScore> userRiskScore;

Map<String, dynamic> toJson() { return {
  'user_risk_score': userRiskScore.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('user_risk_score'); } 
AccessUserRiskScoreRuleUserRiskScore copyWith({List<AccessUserRiskScoreRuleUserRiskScoreUserRiskScore>? userRiskScore}) { return AccessUserRiskScoreRuleUserRiskScore(
  userRiskScore: userRiskScore ?? this.userRiskScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessUserRiskScoreRuleUserRiskScore &&
          listEquals(userRiskScore, other.userRiskScore); } 
@override int get hashCode { return Object.hashAll(userRiskScore).hashCode; } 
@override String toString() { return 'AccessUserRiskScoreRuleUserRiskScore(userRiskScore: $userRiskScore)'; } 
 }
