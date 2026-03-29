// GENERATED CODE - DO NOT MODIFY BY HAND

/// Turn off [Zaraz](https://developers.cloudflare.com/zaraz/).
/// 
final class ZonesDisableZarazId {const ZonesDisableZarazId._(this.value);

factory ZonesDisableZarazId.fromJson(String json) { return switch (json) {
  'disable_zaraz' => disableZaraz,
  _ => ZonesDisableZarazId._(json),
}; }

static const ZonesDisableZarazId disableZaraz = ZonesDisableZarazId._('disable_zaraz');

static const List<ZonesDisableZarazId> values = [disableZaraz];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesDisableZarazId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesDisableZarazId($value)'; } 
 }
final class ZonesDisableZaraz {const ZonesDisableZaraz({this.id});

factory ZonesDisableZaraz.fromJson(Map<String, dynamic> json) { return ZonesDisableZaraz(
  id: json['id'] != null ? ZonesDisableZarazId.fromJson(json['id'] as String) : null,
); }

/// Turn off [Zaraz](https://developers.cloudflare.com/zaraz/).
/// 
final ZonesDisableZarazId? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesDisableZaraz copyWith({ZonesDisableZarazId Function()? id}) { return ZonesDisableZaraz(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesDisableZaraz &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ZonesDisableZaraz(id: $id)'; } 
 }
