// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pod_dns_config_option.dart';/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
final class PodDnsConfig {const PodDnsConfig({this.nameservers, this.options, this.searches, });

factory PodDnsConfig.fromJson(Map<String, dynamic> json) { return PodDnsConfig(
  nameservers: (json['nameservers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  options: (json['options'] as List<dynamic>?)?.map((e) => PodDnsConfigOption.fromJson(e as Map<String, dynamic>)).toList(),
  searches: (json['searches'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
final List<String>? nameservers;

/// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
final List<PodDnsConfigOption>? options;

/// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
final List<String>? searches;

Map<String, dynamic> toJson() { return {
  'nameservers': ?nameservers,
  if (options != null) 'options': options?.map((e) => e.toJson()).toList(),
  'searches': ?searches,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'nameservers', 'options', 'searches'}.contains(key)); } 
PodDnsConfig copyWith({List<String> Function()? nameservers, List<PodDnsConfigOption> Function()? options, List<String> Function()? searches, }) { return PodDnsConfig(
  nameservers: nameservers != null ? nameservers() : this.nameservers,
  options: options != null ? options() : this.options,
  searches: searches != null ? searches() : this.searches,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodDnsConfig &&
          listEquals(nameservers, other.nameservers) &&
          listEquals(options, other.options) &&
          listEquals(searches, other.searches); } 
@override int get hashCode { return Object.hash(Object.hashAll(nameservers ?? const []), Object.hashAll(options ?? const []), Object.hashAll(searches ?? const [])); } 
@override String toString() { return 'PodDnsConfig(nameservers: $nameservers, options: $options, searches: $searches)'; } 
 }
