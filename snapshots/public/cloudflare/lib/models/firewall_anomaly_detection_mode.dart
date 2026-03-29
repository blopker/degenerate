// GENERATED CODE - DO NOT MODIFY BY HAND

/// When a WAF package uses anomaly detection, each rule is given a score when triggered. If the total score of all triggered rules exceeds the sensitivity defined on the WAF package, the action defined on the package will be taken.
extension type const FirewallAnomalyDetectionMode(String value) {
factory FirewallAnomalyDetectionMode.fromJson(String json) => FirewallAnomalyDetectionMode(json);

String toJson() => value;

}
