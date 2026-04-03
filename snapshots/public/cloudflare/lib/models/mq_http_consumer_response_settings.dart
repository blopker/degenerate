// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_batch_size.dart';import 'mq_max_retries.dart';import 'mq_retry_delay.dart';import 'mq_visibility_timeout.dart';@immutable final class MqHttpConsumerResponseSettings {const MqHttpConsumerResponseSettings({this.batchSize, this.maxRetries, this.retryDelay, this.visibilityTimeoutMs, });

factory MqHttpConsumerResponseSettings.fromJson(Map<String, dynamic> json) { return MqHttpConsumerResponseSettings(
  batchSize: json['batch_size'] != null ? MqBatchSize.fromJson(json['batch_size'] as num) : null,
  maxRetries: json['max_retries'] != null ? MqMaxRetries.fromJson(json['max_retries'] as num) : null,
  retryDelay: json['retry_delay'] != null ? MqRetryDelay.fromJson(json['retry_delay'] as num) : null,
  visibilityTimeoutMs: json['visibility_timeout_ms'] != null ? MqVisibilityTimeout.fromJson(json['visibility_timeout_ms'] as num) : null,
); }

/// The maximum number of messages to include in a batch.
final MqBatchSize? batchSize;

final MqMaxRetries? maxRetries;

final MqRetryDelay? retryDelay;

final MqVisibilityTimeout? visibilityTimeoutMs;

Map<String, dynamic> toJson() { return {
  if (batchSize != null) 'batch_size': batchSize?.toJson(),
  if (maxRetries != null) 'max_retries': maxRetries?.toJson(),
  if (retryDelay != null) 'retry_delay': retryDelay?.toJson(),
  if (visibilityTimeoutMs != null) 'visibility_timeout_ms': visibilityTimeoutMs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'batch_size', 'max_retries', 'retry_delay', 'visibility_timeout_ms'}.contains(key)); } 
MqHttpConsumerResponseSettings copyWith({MqBatchSize Function()? batchSize, MqMaxRetries Function()? maxRetries, MqRetryDelay Function()? retryDelay, MqVisibilityTimeout Function()? visibilityTimeoutMs, }) { return MqHttpConsumerResponseSettings(
  batchSize: batchSize != null ? batchSize() : this.batchSize,
  maxRetries: maxRetries != null ? maxRetries() : this.maxRetries,
  retryDelay: retryDelay != null ? retryDelay() : this.retryDelay,
  visibilityTimeoutMs: visibilityTimeoutMs != null ? visibilityTimeoutMs() : this.visibilityTimeoutMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqHttpConsumerResponseSettings &&
          batchSize == other.batchSize &&
          maxRetries == other.maxRetries &&
          retryDelay == other.retryDelay &&
          visibilityTimeoutMs == other.visibilityTimeoutMs; } 
@override int get hashCode { return Object.hash(batchSize, maxRetries, retryDelay, visibilityTimeoutMs); } 
@override String toString() { return 'MqHttpConsumerResponseSettings(batchSize: $batchSize, maxRetries: $maxRetries, retryDelay: $retryDelay, visibilityTimeoutMs: $visibilityTimeoutMs)'; } 
 }
