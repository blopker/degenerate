// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'costs_result.dart';import 'usage_audio_speeches_result.dart';import 'usage_audio_transcriptions_result.dart';import 'usage_code_interpreter_sessions_result.dart';import 'usage_completions_result.dart';import 'usage_embeddings_result.dart';import 'usage_images_result.dart';import 'usage_moderations_result.dart';import 'usage_time_bucket_result.dart';import 'usage_vector_stores_result.dart';@immutable final class UsageTimeBucketObject {const UsageTimeBucketObject._(this.value);

factory UsageTimeBucketObject.fromJson(String json) { return switch (json) {
  'bucket' => bucket,
  _ => UsageTimeBucketObject._(json),
}; }

static const UsageTimeBucketObject bucket = UsageTimeBucketObject._('bucket');

static const List<UsageTimeBucketObject> values = [bucket];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageTimeBucketObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageTimeBucketObject($value)'; } 
 }
@immutable final class UsageTimeBucket {const UsageTimeBucket({required this.object, required this.startTime, required this.endTime, required this.result, });

factory UsageTimeBucket.fromJson(Map<String, dynamic> json) { return UsageTimeBucket(
  object: UsageTimeBucketObject.fromJson(json['object'] as String),
  startTime: (json['start_time'] as num).toInt(),
  endTime: (json['end_time'] as num).toInt(),
  result: (json['result'] as List<dynamic>).map((e) => OneOf9.parse(e, fromA: (v) => UsageCompletionsResult.fromJson(v as Map<String, dynamic>), fromB: (v) => UsageEmbeddingsResult.fromJson(v as Map<String, dynamic>), fromC: (v) => UsageModerationsResult.fromJson(v as Map<String, dynamic>), fromD: (v) => UsageImagesResult.fromJson(v as Map<String, dynamic>), fromE: (v) => UsageAudioSpeechesResult.fromJson(v as Map<String, dynamic>), fromF: (v) => UsageAudioTranscriptionsResult.fromJson(v as Map<String, dynamic>), fromG: (v) => UsageVectorStoresResult.fromJson(v as Map<String, dynamic>), fromH: (v) => UsageCodeInterpreterSessionsResult.fromJson(v as Map<String, dynamic>), fromI: (v) => CostsResult.fromJson(v as Map<String, dynamic>),)).toList(),
); }

final UsageTimeBucketObject object;

final int startTime;

final int endTime;

final List<UsageTimeBucketResult> result;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'start_time': startTime,
  'end_time': endTime,
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('start_time') && json['start_time'] is num &&
      json.containsKey('end_time') && json['end_time'] is num &&
      json.containsKey('result'); } 
UsageTimeBucket copyWith({UsageTimeBucketObject? object, int? startTime, int? endTime, List<UsageTimeBucketResult>? result, }) { return UsageTimeBucket(
  object: object ?? this.object,
  startTime: startTime ?? this.startTime,
  endTime: endTime ?? this.endTime,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsageTimeBucket &&
          object == other.object &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(object, startTime, endTime, Object.hashAll(result)); } 
@override String toString() { return 'UsageTimeBucket(object: $object, startTime: $startTime, endTime: $endTime, result: $result)'; } 
 }
