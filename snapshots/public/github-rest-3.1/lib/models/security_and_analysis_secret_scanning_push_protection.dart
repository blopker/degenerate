// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityAndAnalysisSecretScanningPushProtectionStatus {const SecurityAndAnalysisSecretScanningPushProtectionStatus._(this.value);

factory SecurityAndAnalysisSecretScanningPushProtectionStatus.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => SecurityAndAnalysisSecretScanningPushProtectionStatus._(json),
}; }

static const SecurityAndAnalysisSecretScanningPushProtectionStatus enabled = SecurityAndAnalysisSecretScanningPushProtectionStatus._('enabled');

static const SecurityAndAnalysisSecretScanningPushProtectionStatus disabled = SecurityAndAnalysisSecretScanningPushProtectionStatus._('disabled');

static const List<SecurityAndAnalysisSecretScanningPushProtectionStatus> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAndAnalysisSecretScanningPushProtectionStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningPushProtectionStatus($value)'; } 
 }
final class SecurityAndAnalysisSecretScanningPushProtection {const SecurityAndAnalysisSecretScanningPushProtection({this.status});

factory SecurityAndAnalysisSecretScanningPushProtection.fromJson(Map<String, dynamic> json) { return SecurityAndAnalysisSecretScanningPushProtection(
  status: json['status'] != null ? SecurityAndAnalysisSecretScanningPushProtectionStatus.fromJson(json['status'] as String) : null,
); }

final SecurityAndAnalysisSecretScanningPushProtectionStatus? status;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
SecurityAndAnalysisSecretScanningPushProtection copyWith({SecurityAndAnalysisSecretScanningPushProtectionStatus Function()? status}) { return SecurityAndAnalysisSecretScanningPushProtection(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAndAnalysisSecretScanningPushProtection &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisSecretScanningPushProtection(status: $status)'; } 
 }
