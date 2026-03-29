// GENERATED CODE - DO NOT MODIFY BY HAND

/// Controls whether ChatKit automatically generates thread titles.
final class AutomaticThreadTitlingParam {const AutomaticThreadTitlingParam({this.enabled});

factory AutomaticThreadTitlingParam.fromJson(Map<String, dynamic> json) { return AutomaticThreadTitlingParam(
  enabled: json['enabled'] as bool?,
); }

/// Enable automatic thread title generation. Defaults to true.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
AutomaticThreadTitlingParam copyWith({bool Function()? enabled}) { return AutomaticThreadTitlingParam(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutomaticThreadTitlingParam &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'AutomaticThreadTitlingParam(enabled: $enabled)'; } 
 }
