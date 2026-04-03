// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_batch_size.dart';import 'mq_max_concurrency.dart';import 'mq_max_retries.dart';import 'mq_max_wait_time.dart';import 'mq_retry_delay.dart';@immutable final class MqWorkerConsumerResponseSettings {const MqWorkerConsumerResponseSettings({this.batchSize, this.maxConcurrency, this.maxRetries, this.maxWaitTimeMs, this.retryDelay, });

factory MqWorkerConsumerResponseSettings.fromJson(Map<String, dynamic> json) { return MqWorkerConsumerResponseSettings(
  batchSize: json['batch_size'] != null ? MqBatchSize.fromJson(json['batch_size'] as num) : null,
  maxConcurrency: json['max_concurrency'] != null ? MqMaxConcurrency.fromJson(json['max_concurrency'] as num) : null,
  maxRetries: json['max_retries'] != null ? MqMaxRetries.fromJson(json['max_retries'] as num) : null,
  maxWaitTimeMs: json['max_wait_time_ms'] != null ? MqMaxWaitTime.fromJson(json['max_wait_time_ms'] as num) : null,
  retryDelay: json['retry_delay'] != null ? MqRetryDelay.fromJson(json['retry_delay'] as num) : null,
); }

/// The maximum number of messages to include in a batch.
final MqBatchSize? batchSize;

/// Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
final MqMaxConcurrency? maxConcurrency;

/// The maximum number of retries
final MqMaxRetries? maxRetries;

/// The number of milliseconds to wait for a batch to fill up before attempting to deliver it
final MqMaxWaitTime? maxWaitTimeMs;

/// The number of seconds to delay before making the message available for another attempt.
final MqRetryDelay? retryDelay;

Map<String, dynamic> toJson() { return {
  if (batchSize != null) 'batch_size': batchSize?.toJson(),
  if (maxConcurrency != null) 'max_concurrency': maxConcurrency?.toJson(),
  if (maxRetries != null) 'max_retries': maxRetries?.toJson(),
  if (maxWaitTimeMs != null) 'max_wait_time_ms': maxWaitTimeMs?.toJson(),
  if (retryDelay != null) 'retry_delay': retryDelay?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'batch_size', 'max_concurrency', 'max_retries', 'max_wait_time_ms', 'retry_delay'}.contains(key)); } 
MqWorkerConsumerResponseSettings copyWith({MqBatchSize Function()? batchSize, MqMaxConcurrency Function()? maxConcurrency, MqMaxRetries Function()? maxRetries, MqMaxWaitTime Function()? maxWaitTimeMs, MqRetryDelay Function()? retryDelay, }) { return MqWorkerConsumerResponseSettings(
  batchSize: batchSize != null ? batchSize() : this.batchSize,
  maxConcurrency: maxConcurrency != null ? maxConcurrency() : this.maxConcurrency,
  maxRetries: maxRetries != null ? maxRetries() : this.maxRetries,
  maxWaitTimeMs: maxWaitTimeMs != null ? maxWaitTimeMs() : this.maxWaitTimeMs,
  retryDelay: retryDelay != null ? retryDelay() : this.retryDelay,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqWorkerConsumerResponseSettings &&
          batchSize == other.batchSize &&
          maxConcurrency == other.maxConcurrency &&
          maxRetries == other.maxRetries &&
          maxWaitTimeMs == other.maxWaitTimeMs &&
          retryDelay == other.retryDelay; } 
@override int get hashCode { return Object.hash(batchSize, maxConcurrency, maxRetries, maxWaitTimeMs, retryDelay); } 
@override String toString() { return 'MqWorkerConsumerResponseSettings(batchSize: $batchSize, maxConcurrency: $maxConcurrency, maxRetries: $maxRetries, maxWaitTimeMs: $maxWaitTimeMs, retryDelay: $retryDelay)'; } 
 }
