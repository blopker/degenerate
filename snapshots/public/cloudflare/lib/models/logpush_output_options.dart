// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the output type, such as `ndjson` or `csv`. This sets default values for the rest of the settings, depending on the chosen output type. Some formatting rules, like string quoting, are different between output types.
@immutable final class LogpushOutputOptionsOutputType {const LogpushOutputOptionsOutputType._(this.value);

factory LogpushOutputOptionsOutputType.fromJson(String json) { return switch (json) {
  'ndjson' => ndjson,
  'csv' => csv,
  _ => LogpushOutputOptionsOutputType._(json),
}; }

static const LogpushOutputOptionsOutputType ndjson = LogpushOutputOptionsOutputType._('ndjson');

static const LogpushOutputOptionsOutputType csv = LogpushOutputOptionsOutputType._('csv');

static const List<LogpushOutputOptionsOutputType> values = [ndjson, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogpushOutputOptionsOutputType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogpushOutputOptionsOutputType($value)'; } 
 }
/// String to specify the format for timestamps, such as `unixnano`, `unix`, `rfc3339` or `rfc3339nano`.
@immutable final class LogpushOutputOptionsTimestampFormat {const LogpushOutputOptionsTimestampFormat._(this.value);

factory LogpushOutputOptionsTimestampFormat.fromJson(String json) { return switch (json) {
  'unixnano' => unixnano,
  'unix' => unix,
  'rfc3339' => rfc3339,
  'rfc3339nano' => rfc3339nano,
  _ => LogpushOutputOptionsTimestampFormat._(json),
}; }

static const LogpushOutputOptionsTimestampFormat unixnano = LogpushOutputOptionsTimestampFormat._('unixnano');

static const LogpushOutputOptionsTimestampFormat unix = LogpushOutputOptionsTimestampFormat._('unix');

static const LogpushOutputOptionsTimestampFormat rfc3339 = LogpushOutputOptionsTimestampFormat._('rfc3339');

static const LogpushOutputOptionsTimestampFormat rfc3339nano = LogpushOutputOptionsTimestampFormat._('rfc3339nano');

static const List<LogpushOutputOptionsTimestampFormat> values = [unixnano, unix, rfc3339, rfc3339nano];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogpushOutputOptionsTimestampFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogpushOutputOptionsTimestampFormat($value)'; } 
 }
/// The structured replacement for `logpull_options`. When including this field, the `logpull_option` field will be ignored.
@immutable final class LogpushOutputOptions {const LogpushOutputOptions({this.cve202144228 = const Omittable.absent(), this.batchPrefix = const Omittable.absent(), this.batchSuffix = const Omittable.absent(), this.fieldDelimiter = const Omittable.absent(), this.fieldNames, this.outputType, this.recordDelimiter = const Omittable.absent(), this.recordPrefix = const Omittable.absent(), this.recordSuffix = const Omittable.absent(), this.recordTemplate = const Omittable.absent(), this.sampleRate = const Omittable.absent(), this.timestampFormat, });

factory LogpushOutputOptions.fromJson(Map<String, dynamic> json) { return LogpushOutputOptions(
  cve202144228: json.containsKey('CVE-2021-44228') ? Omittable(json['CVE-2021-44228'] as bool?) : const Omittable.absent(),
  batchPrefix: json.containsKey('batch_prefix') ? Omittable(json['batch_prefix'] as String?) : const Omittable.absent(),
  batchSuffix: json.containsKey('batch_suffix') ? Omittable(json['batch_suffix'] as String?) : const Omittable.absent(),
  fieldDelimiter: json.containsKey('field_delimiter') ? Omittable(json['field_delimiter'] as String?) : const Omittable.absent(),
  fieldNames: (json['field_names'] as List<dynamic>?)?.map((e) => e as String).toList(),
  outputType: json['output_type'] != null ? LogpushOutputOptionsOutputType.fromJson(json['output_type'] as String) : null,
  recordDelimiter: json.containsKey('record_delimiter') ? Omittable(json['record_delimiter'] as String?) : const Omittable.absent(),
  recordPrefix: json.containsKey('record_prefix') ? Omittable(json['record_prefix'] as String?) : const Omittable.absent(),
  recordSuffix: json.containsKey('record_suffix') ? Omittable(json['record_suffix'] as String?) : const Omittable.absent(),
  recordTemplate: json.containsKey('record_template') ? Omittable(json['record_template'] as String?) : const Omittable.absent(),
  sampleRate: json.containsKey('sample_rate') ? Omittable(json['sample_rate'] != null ? (json['sample_rate'] as num).toDouble() : null) : const Omittable.absent(),
  timestampFormat: json['timestamp_format'] != null ? LogpushOutputOptionsTimestampFormat.fromJson(json['timestamp_format'] as String) : null,
); }

/// If set to true, will cause all occurrences of `${` in the generated files to be replaced with `x{`.
final Omittable<bool?> cve202144228;

/// String to be prepended before each batch.
final Omittable<String?> batchPrefix;

/// String to be appended after each batch.
final Omittable<String?> batchSuffix;

/// String to join fields. This field be ignored when `record_template` is set.
final Omittable<String?> fieldDelimiter;

/// List of field names to be included in the Logpush output. For the moment, there is no option to add all fields at once, so you must specify all the fields names you are interested in.
final List<String>? fieldNames;

/// Specifies the output type, such as `ndjson` or `csv`. This sets default values for the rest of the settings, depending on the chosen output type. Some formatting rules, like string quoting, are different between output types.
final LogpushOutputOptionsOutputType? outputType;

/// String to be inserted in-between the records as separator.
final Omittable<String?> recordDelimiter;

/// String to be prepended before each record.
final Omittable<String?> recordPrefix;

/// String to be appended after each record.
final Omittable<String?> recordSuffix;

/// String to use as template for each record instead of the default json key value mapping. All fields used in the template must be present in `field_names` as well, otherwise they will end up as null. Format as a Go `text/template` without any standard functions, like conditionals, loops, sub-templates, etc.
final Omittable<String?> recordTemplate;

/// Floating number to specify sampling rate. Sampling is applied on top of filtering, and regardless of the current `sample_interval` of the data.
final Omittable<double?> sampleRate;

/// String to specify the format for timestamps, such as `unixnano`, `unix`, `rfc3339` or `rfc3339nano`.
final LogpushOutputOptionsTimestampFormat? timestampFormat;

Map<String, dynamic> toJson() { return {
  if (cve202144228.isPresent) 'CVE-2021-44228': cve202144228.value,
  if (batchPrefix.isPresent) 'batch_prefix': batchPrefix.value,
  if (batchSuffix.isPresent) 'batch_suffix': batchSuffix.value,
  if (fieldDelimiter.isPresent) 'field_delimiter': fieldDelimiter.value,
  'field_names': ?fieldNames,
  if (outputType != null) 'output_type': outputType?.toJson(),
  if (recordDelimiter.isPresent) 'record_delimiter': recordDelimiter.value,
  if (recordPrefix.isPresent) 'record_prefix': recordPrefix.value,
  if (recordSuffix.isPresent) 'record_suffix': recordSuffix.value,
  if (recordTemplate.isPresent) 'record_template': recordTemplate.value,
  if (sampleRate.isPresent) 'sample_rate': sampleRate.value,
  if (timestampFormat != null) 'timestamp_format': timestampFormat?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'CVE-2021-44228', 'batch_prefix', 'batch_suffix', 'field_delimiter', 'field_names', 'output_type', 'record_delimiter', 'record_prefix', 'record_suffix', 'record_template', 'sample_rate', 'timestamp_format'}.contains(key)); } 
LogpushOutputOptions copyWith({Omittable<bool?>? cve202144228, Omittable<String?>? batchPrefix, Omittable<String?>? batchSuffix, Omittable<String?>? fieldDelimiter, List<String>? Function()? fieldNames, LogpushOutputOptionsOutputType? Function()? outputType, Omittable<String?>? recordDelimiter, Omittable<String?>? recordPrefix, Omittable<String?>? recordSuffix, Omittable<String?>? recordTemplate, Omittable<double?>? sampleRate, LogpushOutputOptionsTimestampFormat? Function()? timestampFormat, }) { return LogpushOutputOptions(
  cve202144228: cve202144228 ?? this.cve202144228,
  batchPrefix: batchPrefix ?? this.batchPrefix,
  batchSuffix: batchSuffix ?? this.batchSuffix,
  fieldDelimiter: fieldDelimiter ?? this.fieldDelimiter,
  fieldNames: fieldNames != null ? fieldNames() : this.fieldNames,
  outputType: outputType != null ? outputType() : this.outputType,
  recordDelimiter: recordDelimiter ?? this.recordDelimiter,
  recordPrefix: recordPrefix ?? this.recordPrefix,
  recordSuffix: recordSuffix ?? this.recordSuffix,
  recordTemplate: recordTemplate ?? this.recordTemplate,
  sampleRate: sampleRate ?? this.sampleRate,
  timestampFormat: timestampFormat != null ? timestampFormat() : this.timestampFormat,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushOutputOptions &&
          cve202144228 == other.cve202144228 &&
          batchPrefix == other.batchPrefix &&
          batchSuffix == other.batchSuffix &&
          fieldDelimiter == other.fieldDelimiter &&
          listEquals(fieldNames, other.fieldNames) &&
          outputType == other.outputType &&
          recordDelimiter == other.recordDelimiter &&
          recordPrefix == other.recordPrefix &&
          recordSuffix == other.recordSuffix &&
          recordTemplate == other.recordTemplate &&
          sampleRate == other.sampleRate &&
          timestampFormat == other.timestampFormat; } 
@override int get hashCode { return Object.hash(cve202144228, batchPrefix, batchSuffix, fieldDelimiter, Object.hashAll(fieldNames ?? const []), outputType, recordDelimiter, recordPrefix, recordSuffix, recordTemplate, sampleRate, timestampFormat); } 
@override String toString() { return 'LogpushOutputOptions(cve202144228: $cve202144228, batchPrefix: $batchPrefix, batchSuffix: $batchSuffix, fieldDelimiter: $fieldDelimiter, fieldNames: $fieldNames, outputType: $outputType, recordDelimiter: $recordDelimiter, recordPrefix: $recordPrefix, recordSuffix: $recordSuffix, recordTemplate: $recordTemplate, sampleRate: $sampleRate, timestampFormat: $timestampFormat)'; } 
 }
