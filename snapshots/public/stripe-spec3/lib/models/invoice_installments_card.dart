// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoiceInstallmentsCard {const InvoiceInstallmentsCard({this.enabled = const Omittable.absent()});

factory InvoiceInstallmentsCard.fromJson(Map<String, dynamic> json) { return InvoiceInstallmentsCard(
  enabled: json.containsKey('enabled') ? Omittable(json['enabled'] as bool?) : const Omittable.absent(),
); }

/// Whether Installments are enabled for this Invoice.
final Omittable<bool?> enabled;

Map<String, dynamic> toJson() { return {
  if (enabled.isPresent) 'enabled': enabled.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
InvoiceInstallmentsCard copyWith({Omittable<bool?>? enabled}) { return InvoiceInstallmentsCard(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceInstallmentsCard &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'InvoiceInstallmentsCard(enabled: $enabled)'; } 
 }
