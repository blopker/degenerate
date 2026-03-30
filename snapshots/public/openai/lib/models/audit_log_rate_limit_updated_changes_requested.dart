// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to update the rate limits.
final class AuditLogRateLimitUpdatedChangesRequested {const AuditLogRateLimitUpdatedChangesRequested({this.maxRequestsPer1Minute, this.maxTokensPer1Minute, this.maxImagesPer1Minute, this.maxAudioMegabytesPer1Minute, this.maxRequestsPer1Day, this.batch1DayMaxInputTokens, });

factory AuditLogRateLimitUpdatedChangesRequested.fromJson(Map<String, dynamic> json) { return AuditLogRateLimitUpdatedChangesRequested(
  maxRequestsPer1Minute: json['max_requests_per_1_minute'] != null ? (json['max_requests_per_1_minute'] as num).toInt() : null,
  maxTokensPer1Minute: json['max_tokens_per_1_minute'] != null ? (json['max_tokens_per_1_minute'] as num).toInt() : null,
  maxImagesPer1Minute: json['max_images_per_1_minute'] != null ? (json['max_images_per_1_minute'] as num).toInt() : null,
  maxAudioMegabytesPer1Minute: json['max_audio_megabytes_per_1_minute'] != null ? (json['max_audio_megabytes_per_1_minute'] as num).toInt() : null,
  maxRequestsPer1Day: json['max_requests_per_1_day'] != null ? (json['max_requests_per_1_day'] as num).toInt() : null,
  batch1DayMaxInputTokens: json['batch_1_day_max_input_tokens'] != null ? (json['batch_1_day_max_input_tokens'] as num).toInt() : null,
); }

/// The maximum requests per minute.
final int? maxRequestsPer1Minute;

/// The maximum tokens per minute.
final int? maxTokensPer1Minute;

/// The maximum images per minute. Only relevant for certain models.
final int? maxImagesPer1Minute;

/// The maximum audio megabytes per minute. Only relevant for certain models.
final int? maxAudioMegabytesPer1Minute;

/// The maximum requests per day. Only relevant for certain models.
final int? maxRequestsPer1Day;

/// The maximum batch input tokens per day. Only relevant for certain models.
final int? batch1DayMaxInputTokens;

Map<String, dynamic> toJson() { return {
  'max_requests_per_1_minute': ?maxRequestsPer1Minute,
  'max_tokens_per_1_minute': ?maxTokensPer1Minute,
  'max_images_per_1_minute': ?maxImagesPer1Minute,
  'max_audio_megabytes_per_1_minute': ?maxAudioMegabytesPer1Minute,
  'max_requests_per_1_day': ?maxRequestsPer1Day,
  'batch_1_day_max_input_tokens': ?batch1DayMaxInputTokens,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_requests_per_1_minute', 'max_tokens_per_1_minute', 'max_images_per_1_minute', 'max_audio_megabytes_per_1_minute', 'max_requests_per_1_day', 'batch_1_day_max_input_tokens'}.contains(key)); } 
AuditLogRateLimitUpdatedChangesRequested copyWith({int Function()? maxRequestsPer1Minute, int Function()? maxTokensPer1Minute, int Function()? maxImagesPer1Minute, int Function()? maxAudioMegabytesPer1Minute, int Function()? maxRequestsPer1Day, int Function()? batch1DayMaxInputTokens, }) { return AuditLogRateLimitUpdatedChangesRequested(
  maxRequestsPer1Minute: maxRequestsPer1Minute != null ? maxRequestsPer1Minute() : this.maxRequestsPer1Minute,
  maxTokensPer1Minute: maxTokensPer1Minute != null ? maxTokensPer1Minute() : this.maxTokensPer1Minute,
  maxImagesPer1Minute: maxImagesPer1Minute != null ? maxImagesPer1Minute() : this.maxImagesPer1Minute,
  maxAudioMegabytesPer1Minute: maxAudioMegabytesPer1Minute != null ? maxAudioMegabytesPer1Minute() : this.maxAudioMegabytesPer1Minute,
  maxRequestsPer1Day: maxRequestsPer1Day != null ? maxRequestsPer1Day() : this.maxRequestsPer1Day,
  batch1DayMaxInputTokens: batch1DayMaxInputTokens != null ? batch1DayMaxInputTokens() : this.batch1DayMaxInputTokens,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogRateLimitUpdatedChangesRequested &&
          maxRequestsPer1Minute == other.maxRequestsPer1Minute &&
          maxTokensPer1Minute == other.maxTokensPer1Minute &&
          maxImagesPer1Minute == other.maxImagesPer1Minute &&
          maxAudioMegabytesPer1Minute == other.maxAudioMegabytesPer1Minute &&
          maxRequestsPer1Day == other.maxRequestsPer1Day &&
          batch1DayMaxInputTokens == other.batch1DayMaxInputTokens; } 
@override int get hashCode { return Object.hash(maxRequestsPer1Minute, maxTokensPer1Minute, maxImagesPer1Minute, maxAudioMegabytesPer1Minute, maxRequestsPer1Day, batch1DayMaxInputTokens); } 
@override String toString() { return 'AuditLogRateLimitUpdatedChangesRequested(maxRequestsPer1Minute: $maxRequestsPer1Minute, maxTokensPer1Minute: $maxTokensPer1Minute, maxImagesPer1Minute: $maxImagesPer1Minute, maxAudioMegabytesPer1Minute: $maxAudioMegabytesPer1Minute, maxRequestsPer1Day: $maxRequestsPer1Day, batch1DayMaxInputTokens: $batch1DayMaxInputTokens)'; } 
 }
