// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AaaFiltersIncidentImpact {const AaaFiltersIncidentImpact._(this.value);

factory AaaFiltersIncidentImpact.fromJson(String json) { return switch (json) {
  'INCIDENT_IMPACT_NONE' => incidentImpactNone,
  'INCIDENT_IMPACT_MINOR' => incidentImpactMinor,
  'INCIDENT_IMPACT_MAJOR' => incidentImpactMajor,
  'INCIDENT_IMPACT_CRITICAL' => incidentImpactCritical,
  _ => AaaFiltersIncidentImpact._(json),
}; }

static const AaaFiltersIncidentImpact incidentImpactNone = AaaFiltersIncidentImpact._('INCIDENT_IMPACT_NONE');

static const AaaFiltersIncidentImpact incidentImpactMinor = AaaFiltersIncidentImpact._('INCIDENT_IMPACT_MINOR');

static const AaaFiltersIncidentImpact incidentImpactMajor = AaaFiltersIncidentImpact._('INCIDENT_IMPACT_MAJOR');

static const AaaFiltersIncidentImpact incidentImpactCritical = AaaFiltersIncidentImpact._('INCIDENT_IMPACT_CRITICAL');

static const List<AaaFiltersIncidentImpact> values = [incidentImpactNone, incidentImpactMinor, incidentImpactMajor, incidentImpactCritical];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaFiltersIncidentImpact && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaFiltersIncidentImpact($value)'; } 
 }
final class AaaFiltersTrafficExclusions {const AaaFiltersTrafficExclusions._(this.value);

factory AaaFiltersTrafficExclusions.fromJson(String json) { return switch (json) {
  'security_events' => securityEvents,
  _ => AaaFiltersTrafficExclusions._(json),
}; }

static const AaaFiltersTrafficExclusions securityEvents = AaaFiltersTrafficExclusions._('security_events');

static const List<AaaFiltersTrafficExclusions> values = [securityEvents];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaFiltersTrafficExclusions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaFiltersTrafficExclusions($value)'; } 
 }
/// Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
final class AaaFilters {const AaaFilters({this.actions, this.affectedAsns, this.affectedComponents, this.affectedLocations, this.airportCode, this.alertTriggerPreferences, this.alertTriggerPreferencesValue, this.enabled, this.environment, this.event, this.eventSource, this.eventType, this.groupBy, this.healthCheckId, this.incidentImpact, this.inputId, this.insightClass, this.limit, this.logoTag, this.megabitsPerSecond, this.newHealth, this.newStatus, this.packetsPerSecond, this.poolId, this.popNames, this.product, this.projectId, this.protocol, this.queryTag, this.requestsPerSecond, this.selectors, this.services, this.slo, this.status, this.targetHostname, this.targetIp, this.targetZoneName, this.trafficExclusions, this.tunnelId, this.tunnelName, this.type, this.where, this.zones, });

factory AaaFilters.fromJson(Map<String, dynamic> json) { return AaaFilters(
  actions: (json['actions'] as List<dynamic>?)?.map((e) => e as String).toList(),
  affectedAsns: (json['affected_asns'] as List<dynamic>?)?.map((e) => e as String).toList(),
  affectedComponents: (json['affected_components'] as List<dynamic>?)?.map((e) => e as String).toList(),
  affectedLocations: (json['affected_locations'] as List<dynamic>?)?.map((e) => e as String).toList(),
  airportCode: (json['airport_code'] as List<dynamic>?)?.map((e) => e as String).toList(),
  alertTriggerPreferences: (json['alert_trigger_preferences'] as List<dynamic>?)?.map((e) => e as String).toList(),
  alertTriggerPreferencesValue: (json['alert_trigger_preferences_value'] as List<dynamic>?)?.map((e) => e as String).toList(),
  enabled: (json['enabled'] as List<dynamic>?)?.map((e) => e as String).toList(),
  environment: (json['environment'] as List<dynamic>?)?.map((e) => e as String).toList(),
  event: (json['event'] as List<dynamic>?)?.map((e) => e as String).toList(),
  eventSource: (json['event_source'] as List<dynamic>?)?.map((e) => e as String).toList(),
  eventType: (json['event_type'] as List<dynamic>?)?.map((e) => e as String).toList(),
  groupBy: (json['group_by'] as List<dynamic>?)?.map((e) => e as String).toList(),
  healthCheckId: (json['health_check_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
  incidentImpact: (json['incident_impact'] as List<dynamic>?)?.map((e) => AaaFiltersIncidentImpact.fromJson(e as String)).toList(),
  inputId: (json['input_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
  insightClass: (json['insight_class'] as List<dynamic>?)?.map((e) => e as String).toList(),
  limit: (json['limit'] as List<dynamic>?)?.map((e) => e as String).toList(),
  logoTag: (json['logo_tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
  megabitsPerSecond: (json['megabits_per_second'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newHealth: (json['new_health'] as List<dynamic>?)?.map((e) => e as String).toList(),
  newStatus: (json['new_status'] as List<dynamic>?)?.map((e) => e as String).toList(),
  packetsPerSecond: (json['packets_per_second'] as List<dynamic>?)?.map((e) => e as String).toList(),
  poolId: (json['pool_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
  popNames: (json['pop_names'] as List<dynamic>?)?.map((e) => e as String).toList(),
  product: (json['product'] as List<dynamic>?)?.map((e) => e as String).toList(),
  projectId: (json['project_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
  protocol: (json['protocol'] as List<dynamic>?)?.map((e) => e as String).toList(),
  queryTag: (json['query_tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
  requestsPerSecond: (json['requests_per_second'] as List<dynamic>?)?.map((e) => e as String).toList(),
  selectors: (json['selectors'] as List<dynamic>?)?.map((e) => e as String).toList(),
  services: (json['services'] as List<dynamic>?)?.map((e) => e as String).toList(),
  slo: (json['slo'] as List<dynamic>?)?.map((e) => e as String).toList(),
  status: (json['status'] as List<dynamic>?)?.map((e) => e as String).toList(),
  targetHostname: (json['target_hostname'] as List<dynamic>?)?.map((e) => e as String).toList(),
  targetIp: (json['target_ip'] as List<dynamic>?)?.map((e) => e as String).toList(),
  targetZoneName: (json['target_zone_name'] as List<dynamic>?)?.map((e) => e as String).toList(),
  trafficExclusions: (json['traffic_exclusions'] as List<dynamic>?)?.map((e) => AaaFiltersTrafficExclusions.fromJson(e as String)).toList(),
  tunnelId: (json['tunnel_id'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tunnelName: (json['tunnel_name'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: (json['type'] as List<dynamic>?)?.map((e) => e as String).toList(),
  where: (json['where'] as List<dynamic>?)?.map((e) => e as String).toList(),
  zones: (json['zones'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Usage depends on specific alert type
final List<String>? actions;

/// Used for configuring radar_notification
final List<String>? affectedAsns;

/// Used for configuring incident_alert
final List<String>? affectedComponents;

/// Used for configuring radar_notification
final List<String>? affectedLocations;

/// Used for configuring maintenance_event_notification
final List<String>? airportCode;

/// Usage depends on specific alert type
final List<String>? alertTriggerPreferences;

/// Usage depends on specific alert type
final List<String>? alertTriggerPreferencesValue;

/// Used for configuring load_balancing_pool_enablement_alert
final List<String>? enabled;

/// Used for configuring pages_event_alert
final List<String>? environment;

/// Used for configuring pages_event_alert
final List<String>? event;

/// Used for configuring load_balancing_health_alert
final List<String>? eventSource;

/// Usage depends on specific alert type
final List<String>? eventType;

/// Usage depends on specific alert type
final List<String>? groupBy;

/// Used for configuring health_check_status_notification
final List<String>? healthCheckId;

/// Used for configuring incident_alert
final List<AaaFiltersIncidentImpact>? incidentImpact;

/// Used for configuring stream_live_notifications
final List<String>? inputId;

/// Used for configuring security_insights_alert
final List<String>? insightClass;

/// Used for configuring billing_usage_alert
final List<String>? limit;

/// Used for configuring logo_match_alert
final List<String>? logoTag;

/// Used for configuring advanced_ddos_attack_l4_alert
final List<String>? megabitsPerSecond;

/// Used for configuring load_balancing_health_alert
final List<String>? newHealth;

/// Used for configuring tunnel_health_event
final List<String>? newStatus;

/// Used for configuring advanced_ddos_attack_l4_alert
final List<String>? packetsPerSecond;

/// Usage depends on specific alert type
final List<String>? poolId;

/// Usage depends on specific alert type
final List<String>? popNames;

/// Used for configuring billing_usage_alert
final List<String>? product;

/// Used for configuring pages_event_alert
final List<String>? projectId;

/// Used for configuring advanced_ddos_attack_l4_alert
final List<String>? protocol;

/// Usage depends on specific alert type
final List<String>? queryTag;

/// Used for configuring advanced_ddos_attack_l7_alert
final List<String>? requestsPerSecond;

/// Usage depends on specific alert type
final List<String>? selectors;

/// Used for configuring clickhouse_alert_fw_ent_anomaly
final List<String>? services;

/// Usage depends on specific alert type
final List<String>? slo;

/// Used for configuring health_check_status_notification
final List<String>? status;

/// Used for configuring advanced_ddos_attack_l7_alert
final List<String>? targetHostname;

/// Used for configuring advanced_ddos_attack_l4_alert
final List<String>? targetIp;

/// Used for configuring advanced_ddos_attack_l7_alert
final List<String>? targetZoneName;

/// Used for configuring traffic_anomalies_alert
final List<AaaFiltersTrafficExclusions>? trafficExclusions;

/// Used for configuring tunnel_health_event
final List<String>? tunnelId;

/// Usage depends on specific alert type
final List<String>? tunnelName;

/// Usage depends on specific alert type
final List<String>? type;

/// Usage depends on specific alert type
final List<String>? where;

/// Usage depends on specific alert type
final List<String>? zones;

Map<String, dynamic> toJson() { return {
  'actions': ?actions,
  'affected_asns': ?affectedAsns,
  'affected_components': ?affectedComponents,
  'affected_locations': ?affectedLocations,
  'airport_code': ?airportCode,
  'alert_trigger_preferences': ?alertTriggerPreferences,
  'alert_trigger_preferences_value': ?alertTriggerPreferencesValue,
  'enabled': ?enabled,
  'environment': ?environment,
  'event': ?event,
  'event_source': ?eventSource,
  'event_type': ?eventType,
  'group_by': ?groupBy,
  'health_check_id': ?healthCheckId,
  if (incidentImpact != null) 'incident_impact': incidentImpact?.map((e) => e.toJson()).toList(),
  'input_id': ?inputId,
  'insight_class': ?insightClass,
  'limit': ?limit,
  'logo_tag': ?logoTag,
  'megabits_per_second': ?megabitsPerSecond,
  'new_health': ?newHealth,
  'new_status': ?newStatus,
  'packets_per_second': ?packetsPerSecond,
  'pool_id': ?poolId,
  'pop_names': ?popNames,
  'product': ?product,
  'project_id': ?projectId,
  'protocol': ?protocol,
  'query_tag': ?queryTag,
  'requests_per_second': ?requestsPerSecond,
  'selectors': ?selectors,
  'services': ?services,
  'slo': ?slo,
  'status': ?status,
  'target_hostname': ?targetHostname,
  'target_ip': ?targetIp,
  'target_zone_name': ?targetZoneName,
  if (trafficExclusions != null) 'traffic_exclusions': trafficExclusions?.map((e) => e.toJson()).toList(),
  'tunnel_id': ?tunnelId,
  'tunnel_name': ?tunnelName,
  'type': ?type,
  'where': ?where,
  'zones': ?zones,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'actions', 'affected_asns', 'affected_components', 'affected_locations', 'airport_code', 'alert_trigger_preferences', 'alert_trigger_preferences_value', 'enabled', 'environment', 'event', 'event_source', 'event_type', 'group_by', 'health_check_id', 'incident_impact', 'input_id', 'insight_class', 'limit', 'logo_tag', 'megabits_per_second', 'new_health', 'new_status', 'packets_per_second', 'pool_id', 'pop_names', 'product', 'project_id', 'protocol', 'query_tag', 'requests_per_second', 'selectors', 'services', 'slo', 'status', 'target_hostname', 'target_ip', 'target_zone_name', 'traffic_exclusions', 'tunnel_id', 'tunnel_name', 'type', 'where', 'zones'}.contains(key)); } 
AaaFilters copyWith({List<String> Function()? actions, List<String> Function()? affectedAsns, List<String> Function()? affectedComponents, List<String> Function()? affectedLocations, List<String> Function()? airportCode, List<String> Function()? alertTriggerPreferences, List<String> Function()? alertTriggerPreferencesValue, List<String> Function()? enabled, List<String> Function()? environment, List<String> Function()? event, List<String> Function()? eventSource, List<String> Function()? eventType, List<String> Function()? groupBy, List<String> Function()? healthCheckId, List<AaaFiltersIncidentImpact> Function()? incidentImpact, List<String> Function()? inputId, List<String> Function()? insightClass, List<String> Function()? limit, List<String> Function()? logoTag, List<String> Function()? megabitsPerSecond, List<String> Function()? newHealth, List<String> Function()? newStatus, List<String> Function()? packetsPerSecond, List<String> Function()? poolId, List<String> Function()? popNames, List<String> Function()? product, List<String> Function()? projectId, List<String> Function()? protocol, List<String> Function()? queryTag, List<String> Function()? requestsPerSecond, List<String> Function()? selectors, List<String> Function()? services, List<String> Function()? slo, List<String> Function()? status, List<String> Function()? targetHostname, List<String> Function()? targetIp, List<String> Function()? targetZoneName, List<AaaFiltersTrafficExclusions> Function()? trafficExclusions, List<String> Function()? tunnelId, List<String> Function()? tunnelName, List<String> Function()? type, List<String> Function()? where, List<String> Function()? zones, }) { return AaaFilters(
  actions: actions != null ? actions() : this.actions,
  affectedAsns: affectedAsns != null ? affectedAsns() : this.affectedAsns,
  affectedComponents: affectedComponents != null ? affectedComponents() : this.affectedComponents,
  affectedLocations: affectedLocations != null ? affectedLocations() : this.affectedLocations,
  airportCode: airportCode != null ? airportCode() : this.airportCode,
  alertTriggerPreferences: alertTriggerPreferences != null ? alertTriggerPreferences() : this.alertTriggerPreferences,
  alertTriggerPreferencesValue: alertTriggerPreferencesValue != null ? alertTriggerPreferencesValue() : this.alertTriggerPreferencesValue,
  enabled: enabled != null ? enabled() : this.enabled,
  environment: environment != null ? environment() : this.environment,
  event: event != null ? event() : this.event,
  eventSource: eventSource != null ? eventSource() : this.eventSource,
  eventType: eventType != null ? eventType() : this.eventType,
  groupBy: groupBy != null ? groupBy() : this.groupBy,
  healthCheckId: healthCheckId != null ? healthCheckId() : this.healthCheckId,
  incidentImpact: incidentImpact != null ? incidentImpact() : this.incidentImpact,
  inputId: inputId != null ? inputId() : this.inputId,
  insightClass: insightClass != null ? insightClass() : this.insightClass,
  limit: limit != null ? limit() : this.limit,
  logoTag: logoTag != null ? logoTag() : this.logoTag,
  megabitsPerSecond: megabitsPerSecond != null ? megabitsPerSecond() : this.megabitsPerSecond,
  newHealth: newHealth != null ? newHealth() : this.newHealth,
  newStatus: newStatus != null ? newStatus() : this.newStatus,
  packetsPerSecond: packetsPerSecond != null ? packetsPerSecond() : this.packetsPerSecond,
  poolId: poolId != null ? poolId() : this.poolId,
  popNames: popNames != null ? popNames() : this.popNames,
  product: product != null ? product() : this.product,
  projectId: projectId != null ? projectId() : this.projectId,
  protocol: protocol != null ? protocol() : this.protocol,
  queryTag: queryTag != null ? queryTag() : this.queryTag,
  requestsPerSecond: requestsPerSecond != null ? requestsPerSecond() : this.requestsPerSecond,
  selectors: selectors != null ? selectors() : this.selectors,
  services: services != null ? services() : this.services,
  slo: slo != null ? slo() : this.slo,
  status: status != null ? status() : this.status,
  targetHostname: targetHostname != null ? targetHostname() : this.targetHostname,
  targetIp: targetIp != null ? targetIp() : this.targetIp,
  targetZoneName: targetZoneName != null ? targetZoneName() : this.targetZoneName,
  trafficExclusions: trafficExclusions != null ? trafficExclusions() : this.trafficExclusions,
  tunnelId: tunnelId != null ? tunnelId() : this.tunnelId,
  tunnelName: tunnelName != null ? tunnelName() : this.tunnelName,
  type: type != null ? type() : this.type,
  where: where != null ? where() : this.where,
  zones: zones != null ? zones() : this.zones,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaFilters &&
          listEquals(actions, other.actions) &&
          listEquals(affectedAsns, other.affectedAsns) &&
          listEquals(affectedComponents, other.affectedComponents) &&
          listEquals(affectedLocations, other.affectedLocations) &&
          listEquals(airportCode, other.airportCode) &&
          listEquals(alertTriggerPreferences, other.alertTriggerPreferences) &&
          listEquals(alertTriggerPreferencesValue, other.alertTriggerPreferencesValue) &&
          listEquals(enabled, other.enabled) &&
          listEquals(environment, other.environment) &&
          listEquals(event, other.event) &&
          listEquals(eventSource, other.eventSource) &&
          listEquals(eventType, other.eventType) &&
          listEquals(groupBy, other.groupBy) &&
          listEquals(healthCheckId, other.healthCheckId) &&
          listEquals(incidentImpact, other.incidentImpact) &&
          listEquals(inputId, other.inputId) &&
          listEquals(insightClass, other.insightClass) &&
          listEquals(limit, other.limit) &&
          listEquals(logoTag, other.logoTag) &&
          listEquals(megabitsPerSecond, other.megabitsPerSecond) &&
          listEquals(newHealth, other.newHealth) &&
          listEquals(newStatus, other.newStatus) &&
          listEquals(packetsPerSecond, other.packetsPerSecond) &&
          listEquals(poolId, other.poolId) &&
          listEquals(popNames, other.popNames) &&
          listEquals(product, other.product) &&
          listEquals(projectId, other.projectId) &&
          listEquals(protocol, other.protocol) &&
          listEquals(queryTag, other.queryTag) &&
          listEquals(requestsPerSecond, other.requestsPerSecond) &&
          listEquals(selectors, other.selectors) &&
          listEquals(services, other.services) &&
          listEquals(slo, other.slo) &&
          listEquals(status, other.status) &&
          listEquals(targetHostname, other.targetHostname) &&
          listEquals(targetIp, other.targetIp) &&
          listEquals(targetZoneName, other.targetZoneName) &&
          listEquals(trafficExclusions, other.trafficExclusions) &&
          listEquals(tunnelId, other.tunnelId) &&
          listEquals(tunnelName, other.tunnelName) &&
          listEquals(type, other.type) &&
          listEquals(where, other.where) &&
          listEquals(zones, other.zones); } 
@override int get hashCode { return Object.hashAll([Object.hashAll(actions ?? const []), Object.hashAll(affectedAsns ?? const []), Object.hashAll(affectedComponents ?? const []), Object.hashAll(affectedLocations ?? const []), Object.hashAll(airportCode ?? const []), Object.hashAll(alertTriggerPreferences ?? const []), Object.hashAll(alertTriggerPreferencesValue ?? const []), Object.hashAll(enabled ?? const []), Object.hashAll(environment ?? const []), Object.hashAll(event ?? const []), Object.hashAll(eventSource ?? const []), Object.hashAll(eventType ?? const []), Object.hashAll(groupBy ?? const []), Object.hashAll(healthCheckId ?? const []), Object.hashAll(incidentImpact ?? const []), Object.hashAll(inputId ?? const []), Object.hashAll(insightClass ?? const []), Object.hashAll(limit ?? const []), Object.hashAll(logoTag ?? const []), Object.hashAll(megabitsPerSecond ?? const []), Object.hashAll(newHealth ?? const []), Object.hashAll(newStatus ?? const []), Object.hashAll(packetsPerSecond ?? const []), Object.hashAll(poolId ?? const []), Object.hashAll(popNames ?? const []), Object.hashAll(product ?? const []), Object.hashAll(projectId ?? const []), Object.hashAll(protocol ?? const []), Object.hashAll(queryTag ?? const []), Object.hashAll(requestsPerSecond ?? const []), Object.hashAll(selectors ?? const []), Object.hashAll(services ?? const []), Object.hashAll(slo ?? const []), Object.hashAll(status ?? const []), Object.hashAll(targetHostname ?? const []), Object.hashAll(targetIp ?? const []), Object.hashAll(targetZoneName ?? const []), Object.hashAll(trafficExclusions ?? const []), Object.hashAll(tunnelId ?? const []), Object.hashAll(tunnelName ?? const []), Object.hashAll(type ?? const []), Object.hashAll(where ?? const []), Object.hashAll(zones ?? const [])]); } 
@override String toString() { return 'AaaFilters(actions: $actions, affectedAsns: $affectedAsns, affectedComponents: $affectedComponents, affectedLocations: $affectedLocations, airportCode: $airportCode, alertTriggerPreferences: $alertTriggerPreferences, alertTriggerPreferencesValue: $alertTriggerPreferencesValue, enabled: $enabled, environment: $environment, event: $event, eventSource: $eventSource, eventType: $eventType, groupBy: $groupBy, healthCheckId: $healthCheckId, incidentImpact: $incidentImpact, inputId: $inputId, insightClass: $insightClass, limit: $limit, logoTag: $logoTag, megabitsPerSecond: $megabitsPerSecond, newHealth: $newHealth, newStatus: $newStatus, packetsPerSecond: $packetsPerSecond, poolId: $poolId, popNames: $popNames, product: $product, projectId: $projectId, protocol: $protocol, queryTag: $queryTag, requestsPerSecond: $requestsPerSecond, selectors: $selectors, services: $services, slo: $slo, status: $status, targetHostname: $targetHostname, targetIp: $targetIp, targetZoneName: $targetZoneName, trafficExclusions: $trafficExclusions, tunnelId: $tunnelId, tunnelName: $tunnelName, type: $type, where: $where, zones: $zones)'; } 
 }
