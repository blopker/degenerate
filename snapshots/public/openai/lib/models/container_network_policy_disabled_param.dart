// GENERATED CODE - DO NOT MODIFY BY HAND

/// Disable outbound network access. Always `disabled`.
final class ContainerNetworkPolicyDisabledParamType {const ContainerNetworkPolicyDisabledParamType._(this.value);

factory ContainerNetworkPolicyDisabledParamType.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  _ => ContainerNetworkPolicyDisabledParamType._(json),
}; }

static const ContainerNetworkPolicyDisabledParamType disabled = ContainerNetworkPolicyDisabledParamType._('disabled');

static const List<ContainerNetworkPolicyDisabledParamType> values = [disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ContainerNetworkPolicyDisabledParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ContainerNetworkPolicyDisabledParamType($value)'; } 
 }
final class ContainerNetworkPolicyDisabledParam {const ContainerNetworkPolicyDisabledParam({this.type = ContainerNetworkPolicyDisabledParamType.disabled});

factory ContainerNetworkPolicyDisabledParam.fromJson(Map<String, dynamic> json) { return ContainerNetworkPolicyDisabledParam(
  type: ContainerNetworkPolicyDisabledParamType.fromJson(json['type'] as String),
); }

/// Disable outbound network access. Always `disabled`.
final ContainerNetworkPolicyDisabledParamType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ContainerNetworkPolicyDisabledParam copyWith({ContainerNetworkPolicyDisabledParamType? type}) { return ContainerNetworkPolicyDisabledParam(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerNetworkPolicyDisabledParam &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ContainerNetworkPolicyDisabledParam(type: $type)'; } 
 }
