// GENERATED CODE - DO NOT MODIFY BY HAND

import 'climate_removals_location.dart';/// Specific location of this delivery.
final class ClimateRemovalsOrderDeliveriesLocation {const ClimateRemovalsOrderDeliveriesLocation({this.climateRemovalsLocation});

factory ClimateRemovalsOrderDeliveriesLocation.fromJson(Map<String, dynamic> json) { return ClimateRemovalsOrderDeliveriesLocation(
  climateRemovalsLocation: ClimateRemovalsLocation.canParse(json) ? ClimateRemovalsLocation.fromJson(json) : null,
); }

final ClimateRemovalsLocation? climateRemovalsLocation;

/// At least one variant must be present.
bool get isValid { return climateRemovalsLocation != null; } 
Map<String, dynamic> toJson() { return {
  ...?climateRemovalsLocation?.toJson(),
}; } 
 }
