// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_traceroute_test_network_path_response_network_path_sampling.dart';import 'digital_experience_monitoring_traceroute_test_network_path_response_network_path_slots.dart';@immutable final class DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath {const DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath({required this.slots, this.sampling = const Omittable.absent(), });

factory DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath(
  sampling: json.containsKey('sampling') ? Omittable(json['sampling'] != null ? DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSampling.fromJson(json['sampling'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  slots: (json['slots'] as List<dynamic>).map((e) => DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSlots.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Specifies the sampling applied, if any, to the slots response. When sampled, results shown represent the first test run to the start of each sampling interval.
final Omittable<DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSampling?> sampling;

final List<DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSlots> slots;

Map<String, dynamic> toJson() { return {
  if (sampling.isPresent) 'sampling': sampling.value?.toJson(),
  'slots': slots.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('slots'); } 
DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath copyWith({Omittable<DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSampling?>? sampling, List<DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPathSlots>? slots, }) { return DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath(
  sampling: sampling ?? this.sampling,
  slots: slots ?? this.slots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath &&
          sampling == other.sampling &&
          listEquals(slots, other.slots); } 
@override int get hashCode { return Object.hash(sampling, Object.hashAll(slots)); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteTestNetworkPathResponseNetworkPath(sampling: $sampling, slots: $slots)'; } 
 }
