// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_address.dart';import 'smartshield_check_regions2.dart';import 'smartshield_consecutive_fails.dart';import 'smartshield_consecutive_successes.dart';import 'smartshield_description.dart';import 'smartshield_http_config.dart';import 'smartshield_interval.dart';import 'smartshield_name.dart';import 'smartshield_retries.dart';import 'smartshield_suspended.dart';import 'smartshield_tcp_config.dart';import 'smartshield_timeout.dart';import 'smartshield_type.dart';final class SmartshieldQueryHealthcheck {const SmartshieldQueryHealthcheck({required this.address, this.checkRegions, this.consecutiveFails, this.consecutiveSuccesses, this.description, this.httpConfig, this.interval, required this.name, this.retries, this.suspended, this.tcpConfig, this.timeout, this.type, });

factory SmartshieldQueryHealthcheck.fromJson(Map<String, dynamic> json) { return SmartshieldQueryHealthcheck(
  address: SmartshieldAddress.fromJson(json['address'] as String),
  checkRegions: (json['check_regions'] as List<dynamic>?)?.map((e) => SmartshieldCheckRegions2.fromJson(e as String)).toList(),
  consecutiveFails: json['consecutive_fails'] != null ? SmartshieldConsecutiveFails.fromJson(json['consecutive_fails'] as num) : null,
  consecutiveSuccesses: json['consecutive_successes'] != null ? SmartshieldConsecutiveSuccesses.fromJson(json['consecutive_successes'] as num) : null,
  description: json['description'] != null ? SmartshieldDescription.fromJson(json['description'] as String) : null,
  httpConfig: json['http_config'] != null ? SmartshieldHttpConfig.fromJson(json['http_config'] as Map<String, dynamic>) : null,
  interval: json['interval'] != null ? SmartshieldInterval.fromJson(json['interval'] as num) : null,
  name: SmartshieldName.fromJson(json['name'] as String),
  retries: json['retries'] != null ? SmartshieldRetries.fromJson(json['retries'] as num) : null,
  suspended: json['suspended'] != null ? SmartshieldSuspended.fromJson(json['suspended'] as bool) : null,
  tcpConfig: json['tcp_config'] != null ? SmartshieldTcpConfig.fromJson(json['tcp_config'] as Map<String, dynamic>) : null,
  timeout: json['timeout'] != null ? SmartshieldTimeout.fromJson(json['timeout'] as num) : null,
  type: json['type'] != null ? SmartshieldType.fromJson(json['type'] as String) : null,
); }

/// The hostname or IP address of the origin server to run health checks on.
final SmartshieldAddress address;

/// A list of regions from which to run health checks. Null means Cloudflare will pick a default region.
final List<SmartshieldCheckRegions2>? checkRegions;

/// The number of consecutive fails required from a health check before changing the health to unhealthy.
final SmartshieldConsecutiveFails? consecutiveFails;

/// The number of consecutive successes required from a health check before changing the health to healthy.
final SmartshieldConsecutiveSuccesses? consecutiveSuccesses;

/// A human-readable description of the health check.
final SmartshieldDescription? description;

final SmartshieldHttpConfig? httpConfig;

/// The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase load on the origin as we check from multiple locations.
final SmartshieldInterval? interval;

/// A short name to identify the health check. Only alphanumeric characters, hyphens and underscores are allowed.
final SmartshieldName name;

final SmartshieldRetries? retries;

final SmartshieldSuspended? suspended;

final SmartshieldTcpConfig? tcpConfig;

final SmartshieldTimeout? timeout;

final SmartshieldType? type;

Map<String, dynamic> toJson() { return {
  'address': address.toJson(),
  if (checkRegions != null) 'check_regions': checkRegions?.map((e) => e.toJson()).toList(),
  if (consecutiveFails != null) 'consecutive_fails': consecutiveFails?.toJson(),
  if (consecutiveSuccesses != null) 'consecutive_successes': consecutiveSuccesses?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (httpConfig != null) 'http_config': httpConfig?.toJson(),
  if (interval != null) 'interval': interval?.toJson(),
  'name': name.toJson(),
  if (retries != null) 'retries': retries?.toJson(),
  if (suspended != null) 'suspended': suspended?.toJson(),
  if (tcpConfig != null) 'tcp_config': tcpConfig?.toJson(),
  if (timeout != null) 'timeout': timeout?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('address') &&
      json.containsKey('name'); } 
SmartshieldQueryHealthcheck copyWith({SmartshieldAddress? address, List<SmartshieldCheckRegions2>? Function()? checkRegions, SmartshieldConsecutiveFails Function()? consecutiveFails, SmartshieldConsecutiveSuccesses Function()? consecutiveSuccesses, SmartshieldDescription Function()? description, SmartshieldHttpConfig Function()? httpConfig, SmartshieldInterval Function()? interval, SmartshieldName? name, SmartshieldRetries Function()? retries, SmartshieldSuspended Function()? suspended, SmartshieldTcpConfig Function()? tcpConfig, SmartshieldTimeout Function()? timeout, SmartshieldType Function()? type, }) { return SmartshieldQueryHealthcheck(
  address: address ?? this.address,
  checkRegions: checkRegions != null ? checkRegions() : this.checkRegions,
  consecutiveFails: consecutiveFails != null ? consecutiveFails() : this.consecutiveFails,
  consecutiveSuccesses: consecutiveSuccesses != null ? consecutiveSuccesses() : this.consecutiveSuccesses,
  description: description != null ? description() : this.description,
  httpConfig: httpConfig != null ? httpConfig() : this.httpConfig,
  interval: interval != null ? interval() : this.interval,
  name: name ?? this.name,
  retries: retries != null ? retries() : this.retries,
  suspended: suspended != null ? suspended() : this.suspended,
  tcpConfig: tcpConfig != null ? tcpConfig() : this.tcpConfig,
  timeout: timeout != null ? timeout() : this.timeout,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldQueryHealthcheck &&
          address == other.address &&
          listEquals(checkRegions, other.checkRegions) &&
          consecutiveFails == other.consecutiveFails &&
          consecutiveSuccesses == other.consecutiveSuccesses &&
          description == other.description &&
          httpConfig == other.httpConfig &&
          interval == other.interval &&
          name == other.name &&
          retries == other.retries &&
          suspended == other.suspended &&
          tcpConfig == other.tcpConfig &&
          timeout == other.timeout &&
          type == other.type; } 
@override int get hashCode { return Object.hash(address, Object.hashAll(checkRegions ?? const []), consecutiveFails, consecutiveSuccesses, description, httpConfig, interval, name, retries, suspended, tcpConfig, timeout, type); } 
@override String toString() { return 'SmartshieldQueryHealthcheck(address: $address, checkRegions: $checkRegions, consecutiveFails: $consecutiveFails, consecutiveSuccesses: $consecutiveSuccesses, description: $description, httpConfig: $httpConfig, interval: $interval, name: $name, retries: $retries, suspended: $suspended, tcpConfig: $tcpConfig, timeout: $timeout, type: $type)'; } 
 }
