// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'component_value2.dart';import 'frequency.dart';import 'rate_plan2.dart';import 'request2_app.dart';import 'zone_request.dart';@immutable final class Request2 {const Request2({this.app, this.componentValues, this.frequency, this.ratePlan, this.zone, });

factory Request2.fromJson(Map<String, dynamic> json) {return Request2(
  app: json['app'] != null ? Request2App.fromJson(json['app'] as Map<String, dynamic>) : null,
  componentValues: (json['component_values'] as List<dynamic>?)?.map((e) => ComponentValue2.fromJson(e as Map<String, dynamic>)).toList(),
  frequency: json['frequency'] != null ? Frequency.fromJson(json['frequency'] as String) : null,
  ratePlan: json['rate_plan'] != null ? RatePlan2.fromJson(json['rate_plan'] as Map<String, dynamic>) : null,
  zone: json['zone'] != null ? ZoneRequest.fromJson(json['zone'] as Map<String, dynamic>) : null,
);}

final Request2App? app;

/// The list of add-ons subscribed to.
final List<ComponentValue2>? componentValues;

/// How often the subscription is renewed automatically.
final Frequency? frequency;

final RatePlan2? ratePlan;

final ZoneRequest? zone;

Map<String, dynamic> toJson() {return {
  if (app != null) 'app': app?.toJson(),
  if (componentValues != null) 'component_values': componentValues?.map((e) => e.toJson()).toList(),
  if (frequency != null) 'frequency': frequency?.toJson(),
  if (ratePlan != null) 'rate_plan': ratePlan?.toJson(),
  if (zone != null) 'zone': zone?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'app', 'component_values', 'frequency', 'rate_plan', 'zone'}.contains(key));}
Request2 copyWith({Request2App? Function()? app, List<ComponentValue2>? Function()? componentValues, Frequency? Function()? frequency, RatePlan2? Function()? ratePlan, ZoneRequest? Function()? zone, }) {return Request2(
  app: app != null ? app() : this.app,
  componentValues: componentValues != null ? componentValues() : this.componentValues,
  frequency: frequency != null ? frequency() : this.frequency,
  ratePlan: ratePlan != null ? ratePlan() : this.ratePlan,
  zone: zone != null ? zone() : this.zone,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Request2 &&
          app == other.app &&
          listEquals(componentValues, other.componentValues) &&
          frequency == other.frequency &&
          ratePlan == other.ratePlan &&
          zone == other.zone;}
@override int get hashCode {return Object.hash(app, Object.hashAll(componentValues ?? const []), frequency, ratePlan, zone);}
@override String toString() {return 'Request2(app: $app, componentValues: $componentValues, frequency: $frequency, ratePlan: $ratePlan, zone: $zone)';}
}
