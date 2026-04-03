// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Name of CNAME record.
@immutable final class TlsCertificatesAndHostnamesVerificationInfoRecordName {const TlsCertificatesAndHostnamesVerificationInfoRecordName._(this.value);

factory TlsCertificatesAndHostnamesVerificationInfoRecordName.fromJson(String json) { return switch (json) {
  'record_name' => recordName,
  'http_url' => httpUrl,
  'cname' => cname,
  'txt_name' => txtName,
  _ => TlsCertificatesAndHostnamesVerificationInfoRecordName._(json),
}; }

static const TlsCertificatesAndHostnamesVerificationInfoRecordName recordName = TlsCertificatesAndHostnamesVerificationInfoRecordName._('record_name');

static const TlsCertificatesAndHostnamesVerificationInfoRecordName httpUrl = TlsCertificatesAndHostnamesVerificationInfoRecordName._('http_url');

static const TlsCertificatesAndHostnamesVerificationInfoRecordName cname = TlsCertificatesAndHostnamesVerificationInfoRecordName._('cname');

static const TlsCertificatesAndHostnamesVerificationInfoRecordName txtName = TlsCertificatesAndHostnamesVerificationInfoRecordName._('txt_name');

static const List<TlsCertificatesAndHostnamesVerificationInfoRecordName> values = [recordName, httpUrl, cname, txtName];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesVerificationInfoRecordName && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesVerificationInfoRecordName($value)'; } 
 }
/// Target of CNAME record.
@immutable final class TlsCertificatesAndHostnamesVerificationInfoRecordTarget {const TlsCertificatesAndHostnamesVerificationInfoRecordTarget._(this.value);

factory TlsCertificatesAndHostnamesVerificationInfoRecordTarget.fromJson(String json) { return switch (json) {
  'record_value' => recordValue,
  'http_body' => httpBody,
  'cname_target' => cnameTarget,
  'txt_value' => txtValue,
  _ => TlsCertificatesAndHostnamesVerificationInfoRecordTarget._(json),
}; }

static const TlsCertificatesAndHostnamesVerificationInfoRecordTarget recordValue = TlsCertificatesAndHostnamesVerificationInfoRecordTarget._('record_value');

static const TlsCertificatesAndHostnamesVerificationInfoRecordTarget httpBody = TlsCertificatesAndHostnamesVerificationInfoRecordTarget._('http_body');

static const TlsCertificatesAndHostnamesVerificationInfoRecordTarget cnameTarget = TlsCertificatesAndHostnamesVerificationInfoRecordTarget._('cname_target');

static const TlsCertificatesAndHostnamesVerificationInfoRecordTarget txtValue = TlsCertificatesAndHostnamesVerificationInfoRecordTarget._('txt_value');

static const List<TlsCertificatesAndHostnamesVerificationInfoRecordTarget> values = [recordValue, httpBody, cnameTarget, txtValue];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesVerificationInfoRecordTarget && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesVerificationInfoRecordTarget($value)'; } 
 }
/// Certificate's required verification information.
@immutable final class TlsCertificatesAndHostnamesVerificationInfo {const TlsCertificatesAndHostnamesVerificationInfo({this.recordName, this.recordTarget, });

factory TlsCertificatesAndHostnamesVerificationInfo.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesVerificationInfo(
  recordName: json['record_name'] != null ? TlsCertificatesAndHostnamesVerificationInfoRecordName.fromJson(json['record_name'] as String) : null,
  recordTarget: json['record_target'] != null ? TlsCertificatesAndHostnamesVerificationInfoRecordTarget.fromJson(json['record_target'] as String) : null,
); }

/// Name of CNAME record.
final TlsCertificatesAndHostnamesVerificationInfoRecordName? recordName;

/// Target of CNAME record.
final TlsCertificatesAndHostnamesVerificationInfoRecordTarget? recordTarget;

Map<String, dynamic> toJson() { return {
  if (recordName != null) 'record_name': recordName?.toJson(),
  if (recordTarget != null) 'record_target': recordTarget?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'record_name', 'record_target'}.contains(key)); } 
TlsCertificatesAndHostnamesVerificationInfo copyWith({TlsCertificatesAndHostnamesVerificationInfoRecordName Function()? recordName, TlsCertificatesAndHostnamesVerificationInfoRecordTarget Function()? recordTarget, }) { return TlsCertificatesAndHostnamesVerificationInfo(
  recordName: recordName != null ? recordName() : this.recordName,
  recordTarget: recordTarget != null ? recordTarget() : this.recordTarget,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesVerificationInfo &&
          recordName == other.recordName &&
          recordTarget == other.recordTarget; } 
@override int get hashCode { return Object.hash(recordName, recordTarget); } 
@override String toString() { return 'TlsCertificatesAndHostnamesVerificationInfo(recordName: $recordName, recordTarget: $recordTarget)'; } 
 }
