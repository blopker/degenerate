// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_dataset.dart';import 'logpush_destination_conf.dart';import 'logpush_enabled.dart';import 'logpush_filter.dart';import 'logpush_frequency.dart';import 'logpush_kind.dart';import 'logpush_logpull_options.dart';import 'logpush_max_upload_bytes.dart';import 'logpush_max_upload_interval_seconds.dart';import 'logpush_max_upload_records.dart';import 'logpush_name.dart';import 'logpush_output_options.dart';import 'logpush_ownership_challenge.dart';@immutable final class PostAccountsAccountIdLogpushJobsRequest {const PostAccountsAccountIdLogpushJobsRequest({required this.destinationConf, this.dataset = const Omittable.absent(), this.enabled, this.filter = const Omittable.absent(), this.frequency = const Omittable.absent(), this.kind, this.logpullOptions = const Omittable.absent(), this.maxUploadBytes, this.maxUploadIntervalSeconds, this.maxUploadRecords, this.name = const Omittable.absent(), this.outputOptions, this.ownershipChallenge, });

factory PostAccountsAccountIdLogpushJobsRequest.fromJson(Map<String, dynamic> json) { return PostAccountsAccountIdLogpushJobsRequest(
  dataset: json.containsKey('dataset') ? Omittable(json['dataset'] != null ? LogpushDataset.fromJson(json['dataset'] as String) : null) : const Omittable.absent(),
  destinationConf: LogpushDestinationConf.fromJson(json['destination_conf'] as String),
  enabled: json['enabled'] != null ? LogpushEnabled.fromJson(json['enabled'] as bool) : null,
  filter: json.containsKey('filter') ? Omittable(json['filter'] != null ? LogpushFilter.fromJson(json['filter'] as String) : null) : const Omittable.absent(),
  frequency: json.containsKey('frequency') ? Omittable(json['frequency'] != null ? LogpushFrequency.fromJson(json['frequency'] as String) : null) : const Omittable.absent(),
  kind: json['kind'] != null ? LogpushKind.fromJson(json['kind'] as String) : null,
  logpullOptions: json.containsKey('logpull_options') ? Omittable(json['logpull_options'] != null ? LogpushLogpullOptions.fromJson(json['logpull_options'] as String) : null) : const Omittable.absent(),
  maxUploadBytes: json['max_upload_bytes'] != null ? OneOf2.parse(json['max_upload_bytes'], fromA: (v) => LogpushMaxUploadBytesVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  maxUploadIntervalSeconds: json['max_upload_interval_seconds'] != null ? OneOf2.parse(json['max_upload_interval_seconds'], fromA: (v) => LogpushMaxUploadIntervalSecondsVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  maxUploadRecords: json['max_upload_records'] != null ? OneOf2.parse(json['max_upload_records'], fromA: (v) => LogpushMaxUploadRecordsVariant1.fromJson((v as num).toInt()), fromB: (v) => (v as num).toInt(),) : null,
  name: json.containsKey('name') ? Omittable(json['name'] != null ? LogpushName.fromJson(json['name'] as String) : null) : const Omittable.absent(),
  outputOptions: json['output_options'] != null ? LogpushOutputOptions.fromJson(json['output_options'] as Map<String, dynamic>) : null,
  ownershipChallenge: json['ownership_challenge'] != null ? LogpushOwnershipChallenge.fromJson(json['ownership_challenge'] as String) : null,
); }

/// Name of the dataset. A list of supported datasets can be found on the [Developer Docs](https://developers.cloudflare.com/logs/reference/log-fields/).
final Omittable<LogpushDataset?> dataset;

/// Uniquely identifies a resource (such as an s3 bucket) where data. will be pushed. Additional configuration parameters supported by the destination may be included.
final LogpushDestinationConf destinationConf;

/// Flag that indicates if the job is enabled.
final LogpushEnabled? enabled;

/// The filters to select the events to include and/or remove from your logs. For more information, refer to [Filters](https://developers.cloudflare.com/logs/reference/filters/).
final Omittable<LogpushFilter?> filter;

/// This field is deprecated. Please use `max_upload_*` parameters instead. . The frequency at which Cloudflare sends batches of logs to your destination. Setting frequency to high sends your logs in larger quantities of smaller files. Setting frequency to low sends logs in smaller quantities of larger files.
final Omittable<LogpushFrequency?> frequency;

/// The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
final LogpushKind? kind;

/// This field is deprecated. Use `output_options` instead. Configuration string. It specifies things like requested fields and timestamp formats. If migrating from the logpull api, copy the url (full url or just the query string) of your call here, and logpush will keep on making this call for you, setting start and end times appropriately.
final Omittable<LogpushLogpullOptions?> logpullOptions;

final LogpushMaxUploadBytes? maxUploadBytes;

final LogpushMaxUploadIntervalSeconds? maxUploadIntervalSeconds;

final LogpushMaxUploadRecords? maxUploadRecords;

/// Optional human readable job name. Not unique. Cloudflare suggests. that you set this to a meaningful string, like the domain name, to make it easier to identify your job.
final Omittable<LogpushName?> name;

final LogpushOutputOptions? outputOptions;

/// Ownership challenge token to prove destination ownership.
final LogpushOwnershipChallenge? ownershipChallenge;

Map<String, dynamic> toJson() { return {
  if (dataset.isPresent) 'dataset': dataset.value?.toJson(),
  'destination_conf': destinationConf.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (filter.isPresent) 'filter': filter.value?.toJson(),
  if (frequency.isPresent) 'frequency': frequency.value?.toJson(),
  if (kind != null) 'kind': kind?.toJson(),
  if (logpullOptions.isPresent) 'logpull_options': logpullOptions.value?.toJson(),
  if (maxUploadBytes != null) 'max_upload_bytes': maxUploadBytes?.toJson(),
  if (maxUploadIntervalSeconds != null) 'max_upload_interval_seconds': maxUploadIntervalSeconds?.toJson(),
  if (maxUploadRecords != null) 'max_upload_records': maxUploadRecords?.toJson(),
  if (name.isPresent) 'name': name.value?.toJson(),
  if (outputOptions != null) 'output_options': outputOptions?.toJson(),
  if (ownershipChallenge != null) 'ownership_challenge': ownershipChallenge?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination_conf'); } 
PostAccountsAccountIdLogpushJobsRequest copyWith({Omittable<LogpushDataset?>? dataset, LogpushDestinationConf? destinationConf, LogpushEnabled? Function()? enabled, Omittable<LogpushFilter?>? filter, Omittable<LogpushFrequency?>? frequency, LogpushKind? Function()? kind, Omittable<LogpushLogpullOptions?>? logpullOptions, LogpushMaxUploadBytes? Function()? maxUploadBytes, LogpushMaxUploadIntervalSeconds? Function()? maxUploadIntervalSeconds, LogpushMaxUploadRecords? Function()? maxUploadRecords, Omittable<LogpushName?>? name, LogpushOutputOptions? Function()? outputOptions, LogpushOwnershipChallenge? Function()? ownershipChallenge, }) { return PostAccountsAccountIdLogpushJobsRequest(
  dataset: dataset ?? this.dataset,
  destinationConf: destinationConf ?? this.destinationConf,
  enabled: enabled != null ? enabled() : this.enabled,
  filter: filter ?? this.filter,
  frequency: frequency ?? this.frequency,
  kind: kind != null ? kind() : this.kind,
  logpullOptions: logpullOptions ?? this.logpullOptions,
  maxUploadBytes: maxUploadBytes != null ? maxUploadBytes() : this.maxUploadBytes,
  maxUploadIntervalSeconds: maxUploadIntervalSeconds != null ? maxUploadIntervalSeconds() : this.maxUploadIntervalSeconds,
  maxUploadRecords: maxUploadRecords != null ? maxUploadRecords() : this.maxUploadRecords,
  name: name ?? this.name,
  outputOptions: outputOptions != null ? outputOptions() : this.outputOptions,
  ownershipChallenge: ownershipChallenge != null ? ownershipChallenge() : this.ownershipChallenge,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountIdLogpushJobsRequest &&
          dataset == other.dataset &&
          destinationConf == other.destinationConf &&
          enabled == other.enabled &&
          filter == other.filter &&
          frequency == other.frequency &&
          kind == other.kind &&
          logpullOptions == other.logpullOptions &&
          maxUploadBytes == other.maxUploadBytes &&
          maxUploadIntervalSeconds == other.maxUploadIntervalSeconds &&
          maxUploadRecords == other.maxUploadRecords &&
          name == other.name &&
          outputOptions == other.outputOptions &&
          ownershipChallenge == other.ownershipChallenge; } 
@override int get hashCode { return Object.hash(dataset, destinationConf, enabled, filter, frequency, kind, logpullOptions, maxUploadBytes, maxUploadIntervalSeconds, maxUploadRecords, name, outputOptions, ownershipChallenge); } 
@override String toString() { return 'PostAccountsAccountIdLogpushJobsRequest(dataset: $dataset, destinationConf: $destinationConf, enabled: $enabled, filter: $filter, frequency: $frequency, kind: $kind, logpullOptions: $logpullOptions, maxUploadBytes: $maxUploadBytes, maxUploadIntervalSeconds: $maxUploadIntervalSeconds, maxUploadRecords: $maxUploadRecords, name: $name, outputOptions: $outputOptions, ownershipChallenge: $ownershipChallenge)'; } 
 }
