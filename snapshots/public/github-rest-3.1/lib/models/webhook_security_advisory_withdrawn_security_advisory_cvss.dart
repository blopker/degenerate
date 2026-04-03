// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss {const WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss({required this.score, required this.vectorString, });

factory WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss.fromJson(Map<String, dynamic> json) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss(
  score: (json['score'] as num).toDouble(),
  vectorString: json['vector_string'] as String?,
); }

final double score;

final String? vectorString;

Map<String, dynamic> toJson() { return {
  'score': score,
  'vector_string': ?vectorString,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('score') && json['score'] is num &&
      json.containsKey('vector_string') && json['vector_string'] is String; } 
WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss copyWith({double? score, String? Function()? vectorString, }) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss(
  score: score ?? this.score,
  vectorString: vectorString != null ? vectorString() : this.vectorString,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss &&
          score == other.score &&
          vectorString == other.vectorString; } 
@override int get hashCode { return Object.hash(score, vectorString); } 
@override String toString() { return 'WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryCvss(score: $score, vectorString: $vectorString)'; } 
 }
