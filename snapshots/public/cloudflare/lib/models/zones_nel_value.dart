// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesNelValue {const ZonesNelValue({this.enabled});

factory ZonesNelValue.fromJson(Map<String, dynamic> json) {return ZonesNelValue(
  enabled: json['enabled'] as bool?,
);}

final bool? enabled;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? false;}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled'}.contains(key));}
ZonesNelValue copyWith({bool? Function()? enabled}) {return ZonesNelValue(
  enabled: enabled != null ? enabled() : this.enabled,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZonesNelValue &&
          enabled == other.enabled;}
@override int get hashCode {return enabled.hashCode;}
@override String toString() {return 'ZonesNelValue(enabled: $enabled)';}
}
