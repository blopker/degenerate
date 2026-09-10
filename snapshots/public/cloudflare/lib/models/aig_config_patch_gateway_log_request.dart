// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPatchGatewayLogRequest {const AigConfigPatchGatewayLogRequest({this.feedback = const Omittable.absent(), this.metadata = const Omittable.absent(), this.score = const Omittable.absent(), });

factory AigConfigPatchGatewayLogRequest.fromJson(Map<String, dynamic> json) { return AigConfigPatchGatewayLogRequest(
  feedback: json.containsKey('feedback') ? Omittable(json['feedback'] != null ? (json['feedback'] as num).toDouble() : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] as Map<String, dynamic>?) : const Omittable.absent(),
  score: json.containsKey('score') ? Omittable(json['score'] != null ? (json['score'] as num).toDouble() : null) : const Omittable.absent(),
); }

final Omittable<double?> feedback;

final Omittable<Map<String,dynamic>?> metadata;

final Omittable<double?> score;

Map<String, dynamic> toJson() { return {
  if (feedback.isPresent) 'feedback': feedback.value,
  if (metadata.isPresent) 'metadata': metadata.value,
  if (score.isPresent) 'score': score.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'feedback', 'metadata', 'score'}.contains(key)); } 
AigConfigPatchGatewayLogRequest copyWith({Omittable<double?>? feedback, Omittable<Map<String,dynamic>?>? metadata, Omittable<double?>? score, }) { return AigConfigPatchGatewayLogRequest(
  feedback: feedback ?? this.feedback,
  metadata: metadata ?? this.metadata,
  score: score ?? this.score,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPatchGatewayLogRequest &&
          feedback == other.feedback &&
          metadata == other.metadata &&
          score == other.score; } 
@override int get hashCode { return Object.hash(feedback, metadata, score); } 
@override String toString() { return 'AigConfigPatchGatewayLogRequest(feedback: $feedback, metadata: $metadata, score: $score)'; } 
 }
