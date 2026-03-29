// GENERATED CODE - DO NOT MODIFY BY HAND

/// The severity level at which code scanning results that raise alerts block a reference update. For more information on alert severity levels, see "[About code scanning alerts](https://docs.github.com/code-security/code-scanning/managing-code-scanning-alerts/about-code-scanning-alerts#about-alert-severity-and-security-severity-levels)."
final class RepositoryRuleParamsCodeScanningToolAlertsThreshold {const RepositoryRuleParamsCodeScanningToolAlertsThreshold._(this.value);

factory RepositoryRuleParamsCodeScanningToolAlertsThreshold.fromJson(String json) { return switch (json) {
  'none' => none,
  'errors' => errors,
  'errors_and_warnings' => errorsAndWarnings,
  'all' => all,
  _ => RepositoryRuleParamsCodeScanningToolAlertsThreshold._(json),
}; }

static const RepositoryRuleParamsCodeScanningToolAlertsThreshold none = RepositoryRuleParamsCodeScanningToolAlertsThreshold._('none');

static const RepositoryRuleParamsCodeScanningToolAlertsThreshold errors = RepositoryRuleParamsCodeScanningToolAlertsThreshold._('errors');

static const RepositoryRuleParamsCodeScanningToolAlertsThreshold errorsAndWarnings = RepositoryRuleParamsCodeScanningToolAlertsThreshold._('errors_and_warnings');

static const RepositoryRuleParamsCodeScanningToolAlertsThreshold all = RepositoryRuleParamsCodeScanningToolAlertsThreshold._('all');

static const List<RepositoryRuleParamsCodeScanningToolAlertsThreshold> values = [none, errors, errorsAndWarnings, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleParamsCodeScanningToolAlertsThreshold && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleParamsCodeScanningToolAlertsThreshold($value)'; } 
 }
/// The severity level at which code scanning results that raise security alerts block a reference update. For more information on security severity levels, see "[About code scanning alerts](https://docs.github.com/code-security/code-scanning/managing-code-scanning-alerts/about-code-scanning-alerts#about-alert-severity-and-security-severity-levels)."
final class RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold {const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._(this.value);

factory RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold.fromJson(String json) { return switch (json) {
  'none' => none,
  'critical' => critical,
  'high_or_higher' => highOrHigher,
  'medium_or_higher' => mediumOrHigher,
  'all' => all,
  _ => RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._(json),
}; }

static const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold none = RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._('none');

static const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold critical = RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._('critical');

static const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold highOrHigher = RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._('high_or_higher');

static const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold mediumOrHigher = RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._('medium_or_higher');

static const RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold all = RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold._('all');

static const List<RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold> values = [none, critical, highOrHigher, mediumOrHigher, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold($value)'; } 
 }
/// A tool that must provide code scanning results for this rule to pass.
final class RepositoryRuleParamsCodeScanningTool {const RepositoryRuleParamsCodeScanningTool({required this.alertsThreshold, required this.securityAlertsThreshold, required this.tool, });

factory RepositoryRuleParamsCodeScanningTool.fromJson(Map<String, dynamic> json) { return RepositoryRuleParamsCodeScanningTool(
  alertsThreshold: RepositoryRuleParamsCodeScanningToolAlertsThreshold.fromJson(json['alerts_threshold'] as String),
  securityAlertsThreshold: RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold.fromJson(json['security_alerts_threshold'] as String),
  tool: json['tool'] as String,
); }

/// The severity level at which code scanning results that raise alerts block a reference update. For more information on alert severity levels, see "[About code scanning alerts](https://docs.github.com/code-security/code-scanning/managing-code-scanning-alerts/about-code-scanning-alerts#about-alert-severity-and-security-severity-levels)."
final RepositoryRuleParamsCodeScanningToolAlertsThreshold alertsThreshold;

/// The severity level at which code scanning results that raise security alerts block a reference update. For more information on security severity levels, see "[About code scanning alerts](https://docs.github.com/code-security/code-scanning/managing-code-scanning-alerts/about-code-scanning-alerts#about-alert-severity-and-security-severity-levels)."
final RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold securityAlertsThreshold;

/// The name of a code scanning tool
final String tool;

Map<String, dynamic> toJson() { return {
  'alerts_threshold': alertsThreshold.toJson(),
  'security_alerts_threshold': securityAlertsThreshold.toJson(),
  'tool': tool,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('alerts_threshold') &&
      json.containsKey('security_alerts_threshold') &&
      json.containsKey('tool') && json['tool'] is String; } 
RepositoryRuleParamsCodeScanningTool copyWith({RepositoryRuleParamsCodeScanningToolAlertsThreshold? alertsThreshold, RepositoryRuleParamsCodeScanningToolSecurityAlertsThreshold? securityAlertsThreshold, String? tool, }) { return RepositoryRuleParamsCodeScanningTool(
  alertsThreshold: alertsThreshold ?? this.alertsThreshold,
  securityAlertsThreshold: securityAlertsThreshold ?? this.securityAlertsThreshold,
  tool: tool ?? this.tool,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleParamsCodeScanningTool &&
          alertsThreshold == other.alertsThreshold &&
          securityAlertsThreshold == other.securityAlertsThreshold &&
          tool == other.tool; } 
@override int get hashCode { return Object.hash(alertsThreshold, securityAlertsThreshold, tool); } 
@override String toString() { return 'RepositoryRuleParamsCodeScanningTool(alertsThreshold: $alertsThreshold, securityAlertsThreshold: $securityAlertsThreshold, tool: $tool)'; } 
 }
