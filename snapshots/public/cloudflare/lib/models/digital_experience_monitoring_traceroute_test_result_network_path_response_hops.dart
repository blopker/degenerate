// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_traceroute_test_result_network_path_response_hops_location.dart';@immutable final class DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile {const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._(this.value);

factory DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile.fromJson(String json) { return switch (json) {
  'client-to-app' => clientToApp,
  'client-to-cf-egress' => clientToCfEgress,
  'client-to-cf-ingress' => clientToCfIngress,
  'client-to-isp' => clientToIsp,
  _ => DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._(json),
}; }

static const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile clientToApp = DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._('client-to-app');

static const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile clientToCfEgress = DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._('client-to-cf-egress');

static const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile clientToCfIngress = DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._('client-to-cf-ingress');

static const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile clientToIsp = DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile._('client-to-isp');

static const List<DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile> values = [clientToApp, clientToCfEgress, clientToCfIngress, clientToIsp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile($value)'; } 
 }
@immutable final class DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops {const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops({required this.ttl, this.asn = const Omittable.absent(), this.aso = const Omittable.absent(), this.ipAddress = const Omittable.absent(), this.location = const Omittable.absent(), this.mile = const Omittable.absent(), this.name = const Omittable.absent(), this.packetLossPct = const Omittable.absent(), this.rttMs = const Omittable.absent(), });

factory DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops(
  asn: json.containsKey('asn') ? Omittable(json['asn'] != null ? (json['asn'] as num).toInt() : null) : const Omittable.absent(),
  aso: json.containsKey('aso') ? Omittable(json['aso'] as String?) : const Omittable.absent(),
  ipAddress: json.containsKey('ipAddress') ? Omittable(json['ipAddress'] as String?) : const Omittable.absent(),
  location: json.containsKey('location') ? Omittable(json['location'] != null ? DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation.fromJson(json['location'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  mile: json.containsKey('mile') ? Omittable(json['mile'] != null ? DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile.fromJson(json['mile'] as String) : null) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  packetLossPct: json.containsKey('packetLossPct') ? Omittable(json['packetLossPct'] != null ? (json['packetLossPct'] as num).toDouble() : null) : const Omittable.absent(),
  rttMs: json.containsKey('rttMs') ? Omittable(json['rttMs'] != null ? (json['rttMs'] as num).toInt() : null) : const Omittable.absent(),
  ttl: (json['ttl'] as num).toInt(),
); }

final Omittable<int?> asn;

final Omittable<String?> aso;

final Omittable<String?> ipAddress;

final Omittable<DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation?> location;

final Omittable<DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile?> mile;

final Omittable<String?> name;

final Omittable<double?> packetLossPct;

final Omittable<int?> rttMs;

final int ttl;

Map<String, dynamic> toJson() { return {
  if (asn.isPresent) 'asn': asn.value,
  if (aso.isPresent) 'aso': aso.value,
  if (ipAddress.isPresent) 'ipAddress': ipAddress.value,
  if (location.isPresent) 'location': location.value?.toJson(),
  if (mile.isPresent) 'mile': mile.value?.toJson(),
  if (name.isPresent) 'name': name.value,
  if (packetLossPct.isPresent) 'packetLossPct': packetLossPct.value,
  if (rttMs.isPresent) 'rttMs': rttMs.value,
  'ttl': ttl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ttl') && json['ttl'] is num; } 
DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops copyWith({Omittable<int?>? asn, Omittable<String?>? aso, Omittable<String?>? ipAddress, Omittable<DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation?>? location, Omittable<DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsMile?>? mile, Omittable<String?>? name, Omittable<double?>? packetLossPct, Omittable<int?>? rttMs, int? ttl, }) { return DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops(
  asn: asn ?? this.asn,
  aso: aso ?? this.aso,
  ipAddress: ipAddress ?? this.ipAddress,
  location: location ?? this.location,
  mile: mile ?? this.mile,
  name: name ?? this.name,
  packetLossPct: packetLossPct ?? this.packetLossPct,
  rttMs: rttMs ?? this.rttMs,
  ttl: ttl ?? this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops &&
          asn == other.asn &&
          aso == other.aso &&
          ipAddress == other.ipAddress &&
          location == other.location &&
          mile == other.mile &&
          name == other.name &&
          packetLossPct == other.packetLossPct &&
          rttMs == other.rttMs &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(asn, aso, ipAddress, location, mile, name, packetLossPct, rttMs, ttl); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHops(asn: $asn, aso: $aso, ipAddress: $ipAddress, location: $location, mile: $mile, name: $name, packetLossPct: $packetLossPct, rttMs: $rttMs, ttl: $ttl)'; } 
 }
