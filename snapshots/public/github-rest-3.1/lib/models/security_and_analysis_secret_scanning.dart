// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SecurityAndAnalysisSecretScanningStatus {const SecurityAndAnalysisSecretScanningStatus._(this.value);

factory SecurityAndAnalysisSecretScanningStatus.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => SecurityAndAnalysisSecretScanningStatus._(json),
}; }

static const SecurityAndAnalysisSecretScanningStatus enabled = SecurityAndAnalysisSecretScanningStatus._('enabled');

static const SecurityAndAnalysisSecretScanningStatus disabled = SecurityAndAnalysisSecretScanningStatus._('disabled');

static const List<SecurityAndAnalysisSecretScanningStatus> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAndAnalysisSecretScanningStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningStatus($value)'; } 
 }
@immutable final class SecurityAndAnalysisSecretScanning {const SecurityAndAnalysisSecretScanning({this.status});

factory SecurityAndAnalysisSecretScanning.fromJson(Map<String, dynamic> json) { return SecurityAndAnalysisSecretScanning(
  status: json['status'] != null ? SecurityAndAnalysisSecretScanningStatus.fromJson(json['status'] as String) : null,
); }

final SecurityAndAnalysisSecretScanningStatus? status;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
SecurityAndAnalysisSecretScanning copyWith({SecurityAndAnalysisSecretScanningStatus Function()? status}) { return SecurityAndAnalysisSecretScanning(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAndAnalysisSecretScanning &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanning(status: $status)'; } 
 }
