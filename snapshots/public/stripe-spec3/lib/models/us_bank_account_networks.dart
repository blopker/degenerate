// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsBankAccountNetworksSupported {const UsBankAccountNetworksSupported._(this.value);

factory UsBankAccountNetworksSupported.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => UsBankAccountNetworksSupported._(json),
}; }

static const UsBankAccountNetworksSupported ach = UsBankAccountNetworksSupported._('ach');

static const UsBankAccountNetworksSupported usDomesticWire = UsBankAccountNetworksSupported._('us_domestic_wire');

static const List<UsBankAccountNetworksSupported> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsBankAccountNetworksSupported && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsBankAccountNetworksSupported($value)'; } 
 }
/// 
@immutable final class UsBankAccountNetworks {const UsBankAccountNetworks({required this.supported, this.preferred = const Omittable.absent(), });

factory UsBankAccountNetworks.fromJson(Map<String, dynamic> json) { return UsBankAccountNetworks(
  preferred: json.containsKey('preferred') ? Omittable(json['preferred'] as String?) : const Omittable.absent(),
  supported: (json['supported'] as List<dynamic>).map((e) => UsBankAccountNetworksSupported.fromJson(e as String)).toList(),
); }

/// The preferred network.
final Omittable<String?> preferred;

/// All supported networks.
final List<UsBankAccountNetworksSupported> supported;

Map<String, dynamic> toJson() { return {
  if (preferred.isPresent) 'preferred': preferred.value,
  'supported': supported.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('supported'); } 
UsBankAccountNetworks copyWith({Omittable<String?>? preferred, List<UsBankAccountNetworksSupported>? supported, }) { return UsBankAccountNetworks(
  preferred: preferred ?? this.preferred,
  supported: supported ?? this.supported,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsBankAccountNetworks &&
          preferred == other.preferred &&
          listEquals(supported, other.supported); } 
@override int get hashCode { return Object.hash(preferred, Object.hashAll(supported)); } 
@override String toString() { return 'UsBankAccountNetworks(preferred: $preferred, supported: $supported)'; } 
 }
