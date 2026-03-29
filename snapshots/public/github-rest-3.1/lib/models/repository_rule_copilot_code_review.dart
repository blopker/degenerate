// GENERATED CODE - DO NOT MODIFY BY HAND

import 'repository_rule_copilot_code_review_parameters.dart';final class RepositoryRuleCopilotCodeReviewType {const RepositoryRuleCopilotCodeReviewType._(this.value);

factory RepositoryRuleCopilotCodeReviewType.fromJson(String json) { return switch (json) {
  'copilot_code_review' => copilotCodeReview,
  _ => RepositoryRuleCopilotCodeReviewType._(json),
}; }

static const RepositoryRuleCopilotCodeReviewType copilotCodeReview = RepositoryRuleCopilotCodeReviewType._('copilot_code_review');

static const List<RepositoryRuleCopilotCodeReviewType> values = [copilotCodeReview];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleCopilotCodeReviewType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleCopilotCodeReviewType($value)'; } 
 }
/// Request Copilot code review for new pull requests automatically if the author has access to Copilot code review and their premium requests quota has not reached the limit.
final class RepositoryRuleCopilotCodeReview {const RepositoryRuleCopilotCodeReview({required this.type, this.parameters, });

factory RepositoryRuleCopilotCodeReview.fromJson(Map<String, dynamic> json) { return RepositoryRuleCopilotCodeReview(
  type: RepositoryRuleCopilotCodeReviewType.fromJson(json['type'] as String),
  parameters: json['parameters'] != null ? RepositoryRuleCopilotCodeReviewParameters.fromJson(json['parameters'] as Map<String, dynamic>) : null,
); }

final RepositoryRuleCopilotCodeReviewType type;

final RepositoryRuleCopilotCodeReviewParameters? parameters;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  if (parameters != null) 'parameters': parameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleCopilotCodeReview copyWith({RepositoryRuleCopilotCodeReviewType? type, RepositoryRuleCopilotCodeReviewParameters Function()? parameters, }) { return RepositoryRuleCopilotCodeReview(
  type: type ?? this.type,
  parameters: parameters != null ? parameters() : this.parameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleCopilotCodeReview &&
          type == other.type &&
          parameters == other.parameters; } 
@override int get hashCode { return Object.hash(type, parameters); } 
@override String toString() { return 'RepositoryRuleCopilotCodeReview(type: $type, parameters: $parameters)'; } 
 }
