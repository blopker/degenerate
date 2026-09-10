// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Filter options for a particular resource type (pool or origin). Use null to reset.
@immutable final class LoadBalancingFilterOptions {const LoadBalancingFilterOptions({this.disable = const Omittable.absent(), this.healthy = const Omittable.absent(), });

factory LoadBalancingFilterOptions.fromJson(Map<String, dynamic> json) {return LoadBalancingFilterOptions(
  disable: json.containsKey('disable') ? Omittable(json['disable'] as bool?) : const Omittable.absent(),
  healthy: json.containsKey('healthy') ? Omittable(json['healthy'] as bool?) : const Omittable.absent(),
);}

/// If set true, disable notifications for this type of resource (pool or origin).
final Omittable<bool?> disable;

/// If present, send notifications only for this health status (e.g. false for only DOWN events). Use null to reset (all events).
final Omittable<bool?> healthy;

/// The value with the schema default applied when absent.
bool? get disableOrDefault {return disable.valueOr(false);}
Map<String, dynamic> toJson() {return {
  if (disable.isPresent) 'disable': disable.value,
  if (healthy.isPresent) 'healthy': healthy.value,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'disable', 'healthy'}.contains(key));}
LoadBalancingFilterOptions copyWith({Omittable<bool?>? disable, Omittable<bool?>? healthy, }) {return LoadBalancingFilterOptions(
  disable: disable ?? this.disable,
  healthy: healthy ?? this.healthy,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is LoadBalancingFilterOptions &&
          disable == other.disable &&
          healthy == other.healthy;}
@override int get hashCode {return Object.hash(disable, healthy);}
@override String toString() {return 'LoadBalancingFilterOptions(disable: $disable, healthy: $healthy)';}
}
