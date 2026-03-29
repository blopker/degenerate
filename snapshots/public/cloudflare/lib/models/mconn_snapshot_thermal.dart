// GENERATED CODE - DO NOT MODIFY BY HAND

/// Snapshot Thermal
final class MconnSnapshotThermal {const MconnSnapshotThermal({this.connectorId, this.criticalCelcius, this.currentCelcius, required this.label, this.maxCelcius, });

factory MconnSnapshotThermal.fromJson(Map<String, dynamic> json) { return MconnSnapshotThermal(
  connectorId: json['connector_id'] as String?,
  criticalCelcius: json['critical_celcius'] != null ? (json['critical_celcius'] as num).toDouble() : null,
  currentCelcius: json['current_celcius'] != null ? (json['current_celcius'] as num).toDouble() : null,
  label: json['label'] as String,
  maxCelcius: json['max_celcius'] != null ? (json['max_celcius'] as num).toDouble() : null,
); }

/// Connector identifier
final String? connectorId;

/// Critical failure temperature of the component (degrees Celsius)
final double? criticalCelcius;

/// Current temperature of the component (degrees Celsius)
final double? currentCelcius;

/// Sensor identifier for the component
final String label;

/// Maximum temperature of the component (degrees Celsius)
final double? maxCelcius;

Map<String, dynamic> toJson() { return {
  'connector_id': ?connectorId,
  'critical_celcius': ?criticalCelcius,
  'current_celcius': ?currentCelcius,
  'label': label,
  'max_celcius': ?maxCelcius,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('label') && json['label'] is String; } 
MconnSnapshotThermal copyWith({String Function()? connectorId, double Function()? criticalCelcius, double Function()? currentCelcius, String? label, double Function()? maxCelcius, }) { return MconnSnapshotThermal(
  connectorId: connectorId != null ? connectorId() : this.connectorId,
  criticalCelcius: criticalCelcius != null ? criticalCelcius() : this.criticalCelcius,
  currentCelcius: currentCelcius != null ? currentCelcius() : this.currentCelcius,
  label: label ?? this.label,
  maxCelcius: maxCelcius != null ? maxCelcius() : this.maxCelcius,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSnapshotThermal &&
          connectorId == other.connectorId &&
          criticalCelcius == other.criticalCelcius &&
          currentCelcius == other.currentCelcius &&
          label == other.label &&
          maxCelcius == other.maxCelcius; } 
@override int get hashCode { return Object.hash(connectorId, criticalCelcius, currentCelcius, label, maxCelcius); } 
@override String toString() { return 'MconnSnapshotThermal(connectorId: $connectorId, criticalCelcius: $criticalCelcius, currentCelcius: $currentCelcius, label: $label, maxCelcius: $maxCelcius)'; } 
 }
