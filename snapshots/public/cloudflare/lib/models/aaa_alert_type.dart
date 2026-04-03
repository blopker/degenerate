// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
@immutable final class AaaAlertType {const AaaAlertType._(this.value);

factory AaaAlertType.fromJson(String json) { return switch (json) {
  'abuse_report_alert' => abuseReportAlert,
  'access_custom_certificate_expiration_type' => accessCustomCertificateExpirationType,
  'advanced_ddos_attack_l4_alert' => advancedDdosAttackL4Alert,
  'advanced_ddos_attack_l7_alert' => advancedDdosAttackL7Alert,
  'advanced_http_alert_error' => advancedHttpAlertError,
  'bgp_hijack_notification' => bgpHijackNotification,
  'billing_usage_alert' => billingUsageAlert,
  'block_notification_block_removed' => blockNotificationBlockRemoved,
  'block_notification_new_block' => blockNotificationNewBlock,
  'block_notification_review_rejected' => blockNotificationReviewRejected,
  'bot_traffic_basic_alert' => botTrafficBasicAlert,
  'brand_protection_alert' => brandProtectionAlert,
  'brand_protection_digest' => brandProtectionDigest,
  'clickhouse_alert_fw_anomaly' => clickhouseAlertFwAnomaly,
  'clickhouse_alert_fw_ent_anomaly' => clickhouseAlertFwEntAnomaly,
  'cloudforce_one_request_notification' => cloudforceOneRequestNotification,
  'custom_analytics' => customAnalytics,
  'custom_bot_detection_alert' => customBotDetectionAlert,
  'custom_ssl_certificate_event_type' => customSslCertificateEventType,
  'dedicated_ssl_certificate_event_type' => dedicatedSslCertificateEventType,
  'device_connectivity_anomaly_alert' => deviceConnectivityAnomalyAlert,
  'dos_attack_l4' => dosAttackL4,
  'dos_attack_l7' => dosAttackL7,
  'expiring_service_token_alert' => expiringServiceTokenAlert,
  'failing_logpush_job_disabled_alert' => failingLogpushJobDisabledAlert,
  'fbm_auto_advertisement' => fbmAutoAdvertisement,
  'fbm_dosd_attack' => fbmDosdAttack,
  'fbm_volumetric_attack' => fbmVolumetricAttack,
  'health_check_status_notification' => healthCheckStatusNotification,
  'hostname_aop_custom_certificate_expiration_type' => hostnameAopCustomCertificateExpirationType,
  'http_alert_edge_error' => httpAlertEdgeError,
  'http_alert_origin_error' => httpAlertOriginError,
  'image_notification' => imageNotification,
  'image_resizing_notification' => imageResizingNotification,
  'incident_alert' => incidentAlert,
  'load_balancing_health_alert' => loadBalancingHealthAlert,
  'load_balancing_pool_enablement_alert' => loadBalancingPoolEnablementAlert,
  'logo_match_alert' => logoMatchAlert,
  'magic_tunnel_health_check_event' => magicTunnelHealthCheckEvent,
  'magic_wan_tunnel_health' => magicWanTunnelHealth,
  'maintenance_event_notification' => maintenanceEventNotification,
  'mtls_certificate_store_certificate_expiration_type' => mtlsCertificateStoreCertificateExpirationType,
  'pages_event_alert' => pagesEventAlert,
  'radar_notification' => radarNotification,
  'real_origin_monitoring' => realOriginMonitoring,
  'scriptmonitor_alert_new_code_change_detections' => scriptmonitorAlertNewCodeChangeDetections,
  'scriptmonitor_alert_new_hosts' => scriptmonitorAlertNewHosts,
  'scriptmonitor_alert_new_malicious_hosts' => scriptmonitorAlertNewMaliciousHosts,
  'scriptmonitor_alert_new_malicious_scripts' => scriptmonitorAlertNewMaliciousScripts,
  'scriptmonitor_alert_new_malicious_url' => scriptmonitorAlertNewMaliciousUrl,
  'scriptmonitor_alert_new_max_length_resource_url' => scriptmonitorAlertNewMaxLengthResourceUrl,
  'scriptmonitor_alert_new_resources' => scriptmonitorAlertNewResources,
  'secondary_dns_all_primaries_failing' => secondaryDnsAllPrimariesFailing,
  'secondary_dns_primaries_failing' => secondaryDnsPrimariesFailing,
  'secondary_dns_warning' => secondaryDnsWarning,
  'secondary_dns_zone_successfully_updated' => secondaryDnsZoneSuccessfullyUpdated,
  'secondary_dns_zone_validation_warning' => secondaryDnsZoneValidationWarning,
  'security_insights_alert' => securityInsightsAlert,
  'sentinel_alert' => sentinelAlert,
  'stream_live_notifications' => streamLiveNotifications,
  'synthetic_test_latency_alert' => syntheticTestLatencyAlert,
  'synthetic_test_low_availability_alert' => syntheticTestLowAvailabilityAlert,
  'traffic_anomalies_alert' => trafficAnomaliesAlert,
  'tunnel_health_event' => tunnelHealthEvent,
  'tunnel_update_event' => tunnelUpdateEvent,
  'universal_ssl_event_type' => universalSslEventType,
  'web_analytics_metrics_update' => webAnalyticsMetricsUpdate,
  'zone_aop_custom_certificate_expiration_type' => zoneAopCustomCertificateExpirationType,
  _ => AaaAlertType._(json),
}; }

static const AaaAlertType abuseReportAlert = AaaAlertType._('abuse_report_alert');

static const AaaAlertType accessCustomCertificateExpirationType = AaaAlertType._('access_custom_certificate_expiration_type');

static const AaaAlertType advancedDdosAttackL4Alert = AaaAlertType._('advanced_ddos_attack_l4_alert');

static const AaaAlertType advancedDdosAttackL7Alert = AaaAlertType._('advanced_ddos_attack_l7_alert');

static const AaaAlertType advancedHttpAlertError = AaaAlertType._('advanced_http_alert_error');

static const AaaAlertType bgpHijackNotification = AaaAlertType._('bgp_hijack_notification');

static const AaaAlertType billingUsageAlert = AaaAlertType._('billing_usage_alert');

static const AaaAlertType blockNotificationBlockRemoved = AaaAlertType._('block_notification_block_removed');

static const AaaAlertType blockNotificationNewBlock = AaaAlertType._('block_notification_new_block');

static const AaaAlertType blockNotificationReviewRejected = AaaAlertType._('block_notification_review_rejected');

static const AaaAlertType botTrafficBasicAlert = AaaAlertType._('bot_traffic_basic_alert');

static const AaaAlertType brandProtectionAlert = AaaAlertType._('brand_protection_alert');

static const AaaAlertType brandProtectionDigest = AaaAlertType._('brand_protection_digest');

static const AaaAlertType clickhouseAlertFwAnomaly = AaaAlertType._('clickhouse_alert_fw_anomaly');

static const AaaAlertType clickhouseAlertFwEntAnomaly = AaaAlertType._('clickhouse_alert_fw_ent_anomaly');

static const AaaAlertType cloudforceOneRequestNotification = AaaAlertType._('cloudforce_one_request_notification');

static const AaaAlertType customAnalytics = AaaAlertType._('custom_analytics');

static const AaaAlertType customBotDetectionAlert = AaaAlertType._('custom_bot_detection_alert');

static const AaaAlertType customSslCertificateEventType = AaaAlertType._('custom_ssl_certificate_event_type');

static const AaaAlertType dedicatedSslCertificateEventType = AaaAlertType._('dedicated_ssl_certificate_event_type');

static const AaaAlertType deviceConnectivityAnomalyAlert = AaaAlertType._('device_connectivity_anomaly_alert');

static const AaaAlertType dosAttackL4 = AaaAlertType._('dos_attack_l4');

static const AaaAlertType dosAttackL7 = AaaAlertType._('dos_attack_l7');

static const AaaAlertType expiringServiceTokenAlert = AaaAlertType._('expiring_service_token_alert');

static const AaaAlertType failingLogpushJobDisabledAlert = AaaAlertType._('failing_logpush_job_disabled_alert');

static const AaaAlertType fbmAutoAdvertisement = AaaAlertType._('fbm_auto_advertisement');

static const AaaAlertType fbmDosdAttack = AaaAlertType._('fbm_dosd_attack');

static const AaaAlertType fbmVolumetricAttack = AaaAlertType._('fbm_volumetric_attack');

static const AaaAlertType healthCheckStatusNotification = AaaAlertType._('health_check_status_notification');

static const AaaAlertType hostnameAopCustomCertificateExpirationType = AaaAlertType._('hostname_aop_custom_certificate_expiration_type');

static const AaaAlertType httpAlertEdgeError = AaaAlertType._('http_alert_edge_error');

static const AaaAlertType httpAlertOriginError = AaaAlertType._('http_alert_origin_error');

static const AaaAlertType imageNotification = AaaAlertType._('image_notification');

static const AaaAlertType imageResizingNotification = AaaAlertType._('image_resizing_notification');

static const AaaAlertType incidentAlert = AaaAlertType._('incident_alert');

static const AaaAlertType loadBalancingHealthAlert = AaaAlertType._('load_balancing_health_alert');

static const AaaAlertType loadBalancingPoolEnablementAlert = AaaAlertType._('load_balancing_pool_enablement_alert');

static const AaaAlertType logoMatchAlert = AaaAlertType._('logo_match_alert');

static const AaaAlertType magicTunnelHealthCheckEvent = AaaAlertType._('magic_tunnel_health_check_event');

static const AaaAlertType magicWanTunnelHealth = AaaAlertType._('magic_wan_tunnel_health');

static const AaaAlertType maintenanceEventNotification = AaaAlertType._('maintenance_event_notification');

static const AaaAlertType mtlsCertificateStoreCertificateExpirationType = AaaAlertType._('mtls_certificate_store_certificate_expiration_type');

static const AaaAlertType pagesEventAlert = AaaAlertType._('pages_event_alert');

static const AaaAlertType radarNotification = AaaAlertType._('radar_notification');

static const AaaAlertType realOriginMonitoring = AaaAlertType._('real_origin_monitoring');

static const AaaAlertType scriptmonitorAlertNewCodeChangeDetections = AaaAlertType._('scriptmonitor_alert_new_code_change_detections');

static const AaaAlertType scriptmonitorAlertNewHosts = AaaAlertType._('scriptmonitor_alert_new_hosts');

static const AaaAlertType scriptmonitorAlertNewMaliciousHosts = AaaAlertType._('scriptmonitor_alert_new_malicious_hosts');

static const AaaAlertType scriptmonitorAlertNewMaliciousScripts = AaaAlertType._('scriptmonitor_alert_new_malicious_scripts');

static const AaaAlertType scriptmonitorAlertNewMaliciousUrl = AaaAlertType._('scriptmonitor_alert_new_malicious_url');

static const AaaAlertType scriptmonitorAlertNewMaxLengthResourceUrl = AaaAlertType._('scriptmonitor_alert_new_max_length_resource_url');

static const AaaAlertType scriptmonitorAlertNewResources = AaaAlertType._('scriptmonitor_alert_new_resources');

static const AaaAlertType secondaryDnsAllPrimariesFailing = AaaAlertType._('secondary_dns_all_primaries_failing');

static const AaaAlertType secondaryDnsPrimariesFailing = AaaAlertType._('secondary_dns_primaries_failing');

static const AaaAlertType secondaryDnsWarning = AaaAlertType._('secondary_dns_warning');

static const AaaAlertType secondaryDnsZoneSuccessfullyUpdated = AaaAlertType._('secondary_dns_zone_successfully_updated');

static const AaaAlertType secondaryDnsZoneValidationWarning = AaaAlertType._('secondary_dns_zone_validation_warning');

static const AaaAlertType securityInsightsAlert = AaaAlertType._('security_insights_alert');

static const AaaAlertType sentinelAlert = AaaAlertType._('sentinel_alert');

static const AaaAlertType streamLiveNotifications = AaaAlertType._('stream_live_notifications');

static const AaaAlertType syntheticTestLatencyAlert = AaaAlertType._('synthetic_test_latency_alert');

static const AaaAlertType syntheticTestLowAvailabilityAlert = AaaAlertType._('synthetic_test_low_availability_alert');

static const AaaAlertType trafficAnomaliesAlert = AaaAlertType._('traffic_anomalies_alert');

static const AaaAlertType tunnelHealthEvent = AaaAlertType._('tunnel_health_event');

static const AaaAlertType tunnelUpdateEvent = AaaAlertType._('tunnel_update_event');

static const AaaAlertType universalSslEventType = AaaAlertType._('universal_ssl_event_type');

static const AaaAlertType webAnalyticsMetricsUpdate = AaaAlertType._('web_analytics_metrics_update');

static const AaaAlertType zoneAopCustomCertificateExpirationType = AaaAlertType._('zone_aop_custom_certificate_expiration_type');

static const List<AaaAlertType> values = [abuseReportAlert, accessCustomCertificateExpirationType, advancedDdosAttackL4Alert, advancedDdosAttackL7Alert, advancedHttpAlertError, bgpHijackNotification, billingUsageAlert, blockNotificationBlockRemoved, blockNotificationNewBlock, blockNotificationReviewRejected, botTrafficBasicAlert, brandProtectionAlert, brandProtectionDigest, clickhouseAlertFwAnomaly, clickhouseAlertFwEntAnomaly, cloudforceOneRequestNotification, customAnalytics, customBotDetectionAlert, customSslCertificateEventType, dedicatedSslCertificateEventType, deviceConnectivityAnomalyAlert, dosAttackL4, dosAttackL7, expiringServiceTokenAlert, failingLogpushJobDisabledAlert, fbmAutoAdvertisement, fbmDosdAttack, fbmVolumetricAttack, healthCheckStatusNotification, hostnameAopCustomCertificateExpirationType, httpAlertEdgeError, httpAlertOriginError, imageNotification, imageResizingNotification, incidentAlert, loadBalancingHealthAlert, loadBalancingPoolEnablementAlert, logoMatchAlert, magicTunnelHealthCheckEvent, magicWanTunnelHealth, maintenanceEventNotification, mtlsCertificateStoreCertificateExpirationType, pagesEventAlert, radarNotification, realOriginMonitoring, scriptmonitorAlertNewCodeChangeDetections, scriptmonitorAlertNewHosts, scriptmonitorAlertNewMaliciousHosts, scriptmonitorAlertNewMaliciousScripts, scriptmonitorAlertNewMaliciousUrl, scriptmonitorAlertNewMaxLengthResourceUrl, scriptmonitorAlertNewResources, secondaryDnsAllPrimariesFailing, secondaryDnsPrimariesFailing, secondaryDnsWarning, secondaryDnsZoneSuccessfullyUpdated, secondaryDnsZoneValidationWarning, securityInsightsAlert, sentinelAlert, streamLiveNotifications, syntheticTestLatencyAlert, syntheticTestLowAvailabilityAlert, trafficAnomaliesAlert, tunnelHealthEvent, tunnelUpdateEvent, universalSslEventType, webAnalyticsMetricsUpdate, zoneAopCustomCertificateExpirationType];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaAlertType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaAlertType($value)'; } 
 }
