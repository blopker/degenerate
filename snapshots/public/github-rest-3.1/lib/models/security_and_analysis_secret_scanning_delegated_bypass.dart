// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityAndAnalysisSecretScanningDelegatedBypassStatus {const SecurityAndAnalysisSecretScanningDelegatedBypassStatus._(this.value);

factory SecurityAndAnalysisSecretScanningDelegatedBypassStatus.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => SecurityAndAnalysisSecretScanningDelegatedBypassStatus._(json),
}; }

static const SecurityAndAnalysisSecretScanningDelegatedBypassStatus enabled = SecurityAndAnalysisSecretScanningDelegatedBypassStatus._('enabled');

static const SecurityAndAnalysisSecretScanningDelegatedBypassStatus disabled = SecurityAndAnalysisSecretScanningDelegatedBypassStatus._('disabled');

static const List<SecurityAndAnalysisSecretScanningDelegatedBypassStatus> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAndAnalysisSecretScanningDelegatedBypassStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningDelegatedBypassStatus($value)'; } 
 }
final class SecurityAndAnalysisSecretScanningDelegatedBypass {const SecurityAndAnalysisSecretScanningDelegatedBypass({this.status});

factory SecurityAndAnalysisSecretScanningDelegatedBypass.fromJson(Map<String, dynamic> json) { return SecurityAndAnalysisSecretScanningDelegatedBypass(
  status: json['status'] != null ? SecurityAndAnalysisSecretScanningDelegatedBypassStatus.fromJson(json['status'] as String) : null,
); }

final SecurityAndAnalysisSecretScanningDelegatedBypassStatus? status;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SecurityAndAnalysisSecretScanningDelegatedBypass copyWith({SecurityAndAnalysisSecretScanningDelegatedBypassStatus Function()? status}) { return SecurityAndAnalysisSecretScanningDelegatedBypass(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAndAnalysisSecretScanningDelegatedBypass &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningDelegatedBypass(status: $status)'; } 
 }
