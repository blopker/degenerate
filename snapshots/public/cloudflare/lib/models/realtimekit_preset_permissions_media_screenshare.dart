// GENERATED CODE - DO NOT MODIFY BY HAND

/// Can produce screen share video
final class RealtimekitPresetPermissionsMediaScreenshareCanProduce {const RealtimekitPresetPermissionsMediaScreenshareCanProduce._(this.value);

factory RealtimekitPresetPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => RealtimekitPresetPermissionsMediaScreenshareCanProduce._(json),
}; }

static const RealtimekitPresetPermissionsMediaScreenshareCanProduce allowed = RealtimekitPresetPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const RealtimekitPresetPermissionsMediaScreenshareCanProduce notAllowed = RealtimekitPresetPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const RealtimekitPresetPermissionsMediaScreenshareCanProduce canRequest = RealtimekitPresetPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<RealtimekitPresetPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitPresetPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
final class RealtimekitPresetPermissionsMediaScreenshare {const RealtimekitPresetPermissionsMediaScreenshare({required this.canProduce});

factory RealtimekitPresetPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return RealtimekitPresetPermissionsMediaScreenshare(
  canProduce: RealtimekitPresetPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String),
); }

/// Can produce screen share video
final RealtimekitPresetPermissionsMediaScreenshareCanProduce canProduce;

Map<String, dynamic> toJson() { return {
  'can_produce': canProduce.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_produce'); } 
RealtimekitPresetPermissionsMediaScreenshare copyWith({RealtimekitPresetPermissionsMediaScreenshareCanProduce? canProduce}) { return RealtimekitPresetPermissionsMediaScreenshare(
  canProduce: canProduce ?? this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitPresetPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'RealtimekitPresetPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
