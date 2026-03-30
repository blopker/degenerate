// GENERATED CODE - DO NOT MODIFY BY HAND

import 'transcript_text_usage_duration.dart';import 'transcript_text_usage_tokens.dart';/// Token or duration usage statistics for the request.
sealed class CreateTranscriptionResponseDiarizedJsonUsage {const CreateTranscriptionResponseDiarizedJsonUsage();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateTranscriptionResponseDiarizedJsonUsage.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'TranscriptTextUsageTokens' => CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens.fromJson(json),
  'TranscriptTextUsageDuration' => CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration.fromJson(json),
  _ => CreateTranscriptionResponseDiarizedJsonUsage$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateTranscriptionResponseDiarizedJsonUsage$Unknown; } 
 }
final class CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens extends CreateTranscriptionResponseDiarizedJsonUsage {const CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens(this.transcriptTextUsageTokens);

factory CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens(TranscriptTextUsageTokens.fromJson(json)); }

final TranscriptTextUsageTokens transcriptTextUsageTokens;

@override String get type { return 'TranscriptTextUsageTokens'; } 
@override Map<String, dynamic> toJson() { return {...transcriptTextUsageTokens.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens && transcriptTextUsageTokens == other.transcriptTextUsageTokens; } 
@override int get hashCode { return transcriptTextUsageTokens.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageTokens(transcriptTextUsageTokens: $transcriptTextUsageTokens)'; } 
 }
final class CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration extends CreateTranscriptionResponseDiarizedJsonUsage {const CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration(this.transcriptTextUsageDuration);

factory CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration.fromJson(Map<String, dynamic> json) { return CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration(TranscriptTextUsageDuration.fromJson(json)); }

final TranscriptTextUsageDuration transcriptTextUsageDuration;

@override String get type { return 'TranscriptTextUsageDuration'; } 
@override Map<String, dynamic> toJson() { return {...transcriptTextUsageDuration.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration && transcriptTextUsageDuration == other.transcriptTextUsageDuration; } 
@override int get hashCode { return transcriptTextUsageDuration.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseDiarizedJsonUsageTranscriptTextUsageDuration(transcriptTextUsageDuration: $transcriptTextUsageDuration)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CreateTranscriptionResponseDiarizedJsonUsage$Unknown extends CreateTranscriptionResponseDiarizedJsonUsage {const CreateTranscriptionResponseDiarizedJsonUsage$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateTranscriptionResponseDiarizedJsonUsage$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateTranscriptionResponseDiarizedJsonUsage.unknown($json)'; } 
 }
