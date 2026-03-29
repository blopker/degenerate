// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecurityAdvisoriesListGlobalAdvisoriesSeverity {const SecurityAdvisoriesListGlobalAdvisoriesSeverity._(this.value);

factory SecurityAdvisoriesListGlobalAdvisoriesSeverity.fromJson(String json) { return switch (json) {
  'unknown' => unknown,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'critical' => critical,
  _ => SecurityAdvisoriesListGlobalAdvisoriesSeverity._(json),
}; }

static const SecurityAdvisoriesListGlobalAdvisoriesSeverity unknown = SecurityAdvisoriesListGlobalAdvisoriesSeverity._('unknown');

static const SecurityAdvisoriesListGlobalAdvisoriesSeverity low = SecurityAdvisoriesListGlobalAdvisoriesSeverity._('low');

static const SecurityAdvisoriesListGlobalAdvisoriesSeverity medium = SecurityAdvisoriesListGlobalAdvisoriesSeverity._('medium');

static const SecurityAdvisoriesListGlobalAdvisoriesSeverity high = SecurityAdvisoriesListGlobalAdvisoriesSeverity._('high');

static const SecurityAdvisoriesListGlobalAdvisoriesSeverity critical = SecurityAdvisoriesListGlobalAdvisoriesSeverity._('critical');

static const List<SecurityAdvisoriesListGlobalAdvisoriesSeverity> values = [unknown, low, medium, high, critical];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecurityAdvisoriesListGlobalAdvisoriesSeverity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecurityAdvisoriesListGlobalAdvisoriesSeverity($value)'; } 
 }
