// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_dataset.dart';import 'logpush_destination_conf.dart';import 'logpush_enabled.dart';import 'logpush_frequency.dart';import 'logpush_id.dart';import 'logpush_kind.dart';import 'logpush_logpull_options.dart';import 'logpush_max_upload_bytes.dart';import 'logpush_max_upload_interval_seconds.dart';import 'logpush_max_upload_records.dart';import 'logpush_name.dart';import 'logpush_output_options.dart';/// If not null, the job is currently failing. Failures are usually. repetitive (example: no permissions to write to destination bucket). Only the last failure is recorded. On successful execution of a job the error_message and last_error are set to null.
extension type const LogpushErrorMessage(String value) {
factory LogpushErrorMessage.fromJson(String json) => LogpushErrorMessage(json);

String toJson() => value;

}
/// Records the last time for which logs have been successfully pushed. If the last successful push was for logs range 2018-07-23T10:00:00Z to 2018-07-23T10:01:00Z then the value of this field will be 2018-07-23T10:01:00Z. If the job has never run or has just been enabled and hasn't run yet then the field will be empty.
extension type LogpushLastComplete(DateTime value) {
factory LogpushLastComplete.fromJson(String json) => LogpushLastComplete(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Records the last time the job failed. If not null, the job is currently. failing. If null, the job has either never failed or has run successfully at least once since last failure. See also the error_message field.
extension type LogpushLastError(DateTime value) {
factory LogpushLastError.fromJson(String json) => LogpushLastError(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class LogpushLogpushJob {const LogpushLogpushJob({this.dataset = const Omittable.absent(), this.destinationConf, this.enabled, this.errorMessage = const Omittable.absent(), this.frequency = const Omittable.absent(), this.id, this.kind, this.lastComplete = const Omittable.absent(), this.lastError = const Omittable.absent(), this.logpullOptions = const Omittable.absent(), this.maxUploadBytes, this.maxUploadIntervalSeconds, this.maxUploadRecords, this.name = const Omittable.absent(), this.outputOptions, });

factory LogpushLogpushJob.fromJson(Map<String, dynamic> json) { return LogpushLogpushJob(
  dataset: json.containsKey('dataset') ? Omittable(json['dataset'] != null ? LogpushDataset.fromJson(json['dataset'] as String) : null) : const Omittable.absent(),
  destinationConf: json['destination_conf'] != null ? LogpushDestinationConf.fromJson(json['destination_conf'] as String) : null,
  enabled: json['enabled'] != null ? LogpushEnabled.fromJson(json['enabled'] as bool) : null,
  errorMessage: json.containsKey('error_message') ? Omittable(json['error_message'] != null ? LogpushErrorMessage.fromJson(json['error_message'] as String) : null) : const Omittable.absent(),
  frequency: json.containsKey('frequency') ? Omittable(json['frequency'] != null ? LogpushFrequency.fromJson(json['frequency'] as String) : null) : const Omittable.absent(),
  id: json['id'] != null ? LogpushId.fromJson(json['id'] as num) : null,
  kind: json['kind'] != null ? LogpushKind.fromJson(json['kind'] as String) : null,
  lastComplete: json.containsKey('last_complete') ? Omittable(json['last_complete'] != null ? LogpushLastComplete.fromJson(json['last_complete'] as String) : null) : const Omittable.absent(),
  lastError: json.containsKey('last_error') ? Omittable(json['last_error'] != null ? LogpushLastError.fromJson(json['last_error'] as String) : null) : const Omittable.absent(),
  logpullOptions: json.containsKey('logpull_options') ? Omittable(json['logpull_options'] != null ? LogpushLogpullOptions.fromJson(json['logpull_options'] as String) : null) : const Omittable.absent(),
  maxUploadBytes: json['max_upload_bytes'] != null ? OneOf2.parse(json['max_upload_bytes'], fromA: (v) => LogpushMaxUploadBytesVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  maxUploadIntervalSeconds: json['max_upload_interval_seconds'] != null ? OneOf2.parse(json['max_upload_interval_seconds'], fromA: (v) => LogpushMaxUploadIntervalSecondsVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  maxUploadRecords: json['max_upload_records'] != null ? OneOf2.parse(json['max_upload_records'], fromA: (v) => LogpushMaxUploadRecordsVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  name: json.containsKey('name') ? Omittable(json['name'] != null ? LogpushName.fromJson(json['name'] as String) : null) : const Omittable.absent(),
  outputOptions: json['output_options'] != null ? LogpushOutputOptions.fromJson(json['output_options'] as Map<String, dynamic>) : null,
); }

/// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
final Omittable<LogpushDataset?> dataset;

/// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
final LogpushDestinationConf? destinationConf;

/// Flag that indicates if the job is enabled.
final LogpushEnabled? enabled;

/// If not null, the job is currently failing. Failures are usually. repetitive (example: no permissions to write to destination bucket). Only the last failure is recorded. On successful execution of a job the error_message and last_error are set to null.
final Omittable<LogpushErrorMessage?> errorMessage;

/// This field is deprecated. Please use `max_upload_*` parameters instead. . The frequency at which Cloudflare sends batches of logs to your destination. Setting frequency to high sends your logs in larger quantities of smaller files. Setting frequency to low sends logs in smaller quantities of larger files.
final Omittable<LogpushFrequency?> frequency;

/// Unique id of the job.
final LogpushId? id;

/// The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
final LogpushKind? kind;

/// Records the last time for which logs have been successfully pushed. If the last successful push was for logs range 2018-07-23T10:00:00Z to 2018-07-23T10:01:00Z then the value of this field will be 2018-07-23T10:01:00Z. If the job has never run or has just been enabled and hasn't run yet then the field will be empty.
final Omittable<LogpushLastComplete?> lastComplete;

/// Records the last time the job failed. If not null, the job is currently. failing. If null, the job has either never failed or has run successfully at least once since last failure. See also the error_message field.
final Omittable<LogpushLastError?> lastError;

/// This field is deprecated. Use `output_options` instead. Configuration string. It specifies things like requested fields and timestamp formats. If migrating from the logpull api, copy the url (full url or just the query string) of your call here, and logpush will keep on making this call for you, setting start and end times appropriately.
final Omittable<LogpushLogpullOptions?> logpullOptions;

final LogpushMaxUploadBytes? maxUploadBytes;

final LogpushMaxUploadIntervalSeconds? maxUploadIntervalSeconds;

final LogpushMaxUploadRecords? maxUploadRecords;

final Omittable<LogpushName?> name;

final LogpushOutputOptions? outputOptions;

Map<String, dynamic> toJson() { return {
  if (dataset.isPresent) 'dataset': dataset.value?.toJson(),
  if (destinationConf != null) 'destination_conf': destinationConf?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (errorMessage.isPresent) 'error_message': errorMessage.value?.toJson(),
  if (frequency.isPresent) 'frequency': frequency.value?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (kind != null) 'kind': kind?.toJson(),
  if (lastComplete.isPresent) 'last_complete': lastComplete.value?.toJson(),
  if (lastError.isPresent) 'last_error': lastError.value?.toJson(),
  if (logpullOptions.isPresent) 'logpull_options': logpullOptions.value?.toJson(),
  if (maxUploadBytes != null) 'max_upload_bytes': maxUploadBytes?.toJson(),
  if (maxUploadIntervalSeconds != null) 'max_upload_interval_seconds': maxUploadIntervalSeconds?.toJson(),
  if (maxUploadRecords != null) 'max_upload_records': maxUploadRecords?.toJson(),
  if (name.isPresent) 'name': name.value?.toJson(),
  if (outputOptions != null) 'output_options': outputOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dataset', 'destination_conf', 'enabled', 'error_message', 'frequency', 'id', 'kind', 'last_complete', 'last_error', 'logpull_options', 'max_upload_bytes', 'max_upload_interval_seconds', 'max_upload_records', 'name', 'output_options'}.contains(key)); } 
LogpushLogpushJob copyWith({Omittable<LogpushDataset?>? dataset, LogpushDestinationConf? Function()? destinationConf, LogpushEnabled? Function()? enabled, Omittable<LogpushErrorMessage?>? errorMessage, Omittable<LogpushFrequency?>? frequency, LogpushId? Function()? id, LogpushKind? Function()? kind, Omittable<LogpushLastComplete?>? lastComplete, Omittable<LogpushLastError?>? lastError, Omittable<LogpushLogpullOptions?>? logpullOptions, LogpushMaxUploadBytes? Function()? maxUploadBytes, LogpushMaxUploadIntervalSeconds? Function()? maxUploadIntervalSeconds, LogpushMaxUploadRecords? Function()? maxUploadRecords, Omittable<LogpushName?>? name, LogpushOutputOptions? Function()? outputOptions, }) { return LogpushLogpushJob(
  dataset: dataset ?? this.dataset,
  destinationConf: destinationConf != null ? destinationConf() : this.destinationConf,
  enabled: enabled != null ? enabled() : this.enabled,
  errorMessage: errorMessage ?? this.errorMessage,
  frequency: frequency ?? this.frequency,
  id: id != null ? id() : this.id,
  kind: kind != null ? kind() : this.kind,
  lastComplete: lastComplete ?? this.lastComplete,
  lastError: lastError ?? this.lastError,
  logpullOptions: logpullOptions ?? this.logpullOptions,
  maxUploadBytes: maxUploadBytes != null ? maxUploadBytes() : this.maxUploadBytes,
  maxUploadIntervalSeconds: maxUploadIntervalSeconds != null ? maxUploadIntervalSeconds() : this.maxUploadIntervalSeconds,
  maxUploadRecords: maxUploadRecords != null ? maxUploadRecords() : this.maxUploadRecords,
  name: name ?? this.name,
  outputOptions: outputOptions != null ? outputOptions() : this.outputOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushLogpushJob &&
          dataset == other.dataset &&
          destinationConf == other.destinationConf &&
          enabled == other.enabled &&
          errorMessage == other.errorMessage &&
          frequency == other.frequency &&
          id == other.id &&
          kind == other.kind &&
          lastComplete == other.lastComplete &&
          lastError == other.lastError &&
          logpullOptions == other.logpullOptions &&
          maxUploadBytes == other.maxUploadBytes &&
          maxUploadIntervalSeconds == other.maxUploadIntervalSeconds &&
          maxUploadRecords == other.maxUploadRecords &&
          name == other.name &&
          outputOptions == other.outputOptions; } 
@override int get hashCode { return Object.hash(dataset, destinationConf, enabled, errorMessage, frequency, id, kind, lastComplete, lastError, logpullOptions, maxUploadBytes, maxUploadIntervalSeconds, maxUploadRecords, name, outputOptions); } 
@override String toString() { return 'LogpushLogpushJob(dataset: $dataset, destinationConf: $destinationConf, enabled: $enabled, errorMessage: $errorMessage, frequency: $frequency, id: $id, kind: $kind, lastComplete: $lastComplete, lastError: $lastError, logpullOptions: $logpullOptions, maxUploadBytes: $maxUploadBytes, maxUploadIntervalSeconds: $maxUploadIntervalSeconds, maxUploadRecords: $maxUploadRecords, name: $name, outputOptions: $outputOptions)'; } 
 }
