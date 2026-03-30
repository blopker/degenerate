// GENERATED CODE - DO NOT MODIFY BY HAND

/// Can produce screen share video
final class RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce {const RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce._(this.value);

factory RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce.fromJson(String json) { return switch (json) {
  'ALLOWED' => allowed,
  'NOT_ALLOWED' => notAllowed,
  'CAN_REQUEST' => canRequest,
  _ => RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce._(json),
}; }

static const RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce allowed = RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce._('ALLOWED');

static const RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce notAllowed = RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce._('NOT_ALLOWED');

static const RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce canRequest = RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce._('CAN_REQUEST');

static const List<RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce> values = [allowed, notAllowed, canRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce($value)'; } 
 }
/// Screenshare permissions
final class RealtimekitUpdatePresetPermissionsMediaScreenshare {const RealtimekitUpdatePresetPermissionsMediaScreenshare({this.canProduce});

factory RealtimekitUpdatePresetPermissionsMediaScreenshare.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsMediaScreenshare(
  canProduce: json['can_produce'] != null ? RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce.fromJson(json['can_produce'] as String) : null,
); }

/// Can produce screen share video
final RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce? canProduce;

Map<String, dynamic> toJson() { return {
  if (canProduce != null) 'can_produce': canProduce?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_produce'}.contains(key)); } 
RealtimekitUpdatePresetPermissionsMediaScreenshare copyWith({RealtimekitUpdatePresetPermissionsMediaScreenshareCanProduce Function()? canProduce}) { return RealtimekitUpdatePresetPermissionsMediaScreenshare(
  canProduce: canProduce != null ? canProduce() : this.canProduce,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsMediaScreenshare &&
          canProduce == other.canProduce; } 
@override int get hashCode { return canProduce.hashCode; } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsMediaScreenshare(canProduce: $canProduce)'; } 
 }
