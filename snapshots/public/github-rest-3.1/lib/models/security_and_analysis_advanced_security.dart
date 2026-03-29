// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityAndAnalysisAdvancedSecurityStatus {const SecurityAndAnalysisAdvancedSecurityStatus._(this.value);

factory SecurityAndAnalysisAdvancedSecurityStatus.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  _ => SecurityAndAnalysisAdvancedSecurityStatus._(json),
}; }

static const SecurityAndAnalysisAdvancedSecurityStatus enabled = SecurityAndAnalysisAdvancedSecurityStatus._('enabled');

static const SecurityAndAnalysisAdvancedSecurityStatus disabled = SecurityAndAnalysisAdvancedSecurityStatus._('disabled');

static const List<SecurityAndAnalysisAdvancedSecurityStatus> values = [enabled, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAndAnalysisAdvancedSecurityStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisAdvancedSecurityStatus($value)'; } 
 }
/// Enable or disable GitHub Advanced Security for the repository.
/// 
/// For standalone Code Scanning or Secret Protection products, this parameter cannot be used.
/// 
final class SecurityAndAnalysisAdvancedSecurity {const SecurityAndAnalysisAdvancedSecurity({this.status});

factory SecurityAndAnalysisAdvancedSecurity.fromJson(Map<String, dynamic> json) { return SecurityAndAnalysisAdvancedSecurity(
  status: json['status'] != null ? SecurityAndAnalysisAdvancedSecurityStatus.fromJson(json['status'] as String) : null,
); }

final SecurityAndAnalysisAdvancedSecurityStatus? status;

Map<String, dynamic> toJson() { return {
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
SecurityAndAnalysisAdvancedSecurity copyWith({SecurityAndAnalysisAdvancedSecurityStatus Function()? status}) { return SecurityAndAnalysisAdvancedSecurity(
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAndAnalysisAdvancedSecurity &&
          status == other.status; } 
@override int get hashCode { return status.hashCode; } 
@override String toString() { return 'SecurityAndAnalysisAdvancedSecurity(status: $status)'; } 
 }
