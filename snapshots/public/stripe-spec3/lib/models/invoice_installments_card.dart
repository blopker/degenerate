// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class InvoiceInstallmentsCard {const InvoiceInstallmentsCard({this.enabled});

factory InvoiceInstallmentsCard.fromJson(Map<String, dynamic> json) { return InvoiceInstallmentsCard(
  enabled: json['enabled'] as bool?,
); }

/// Whether Installments are enabled for this Invoice.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
InvoiceInstallmentsCard copyWith({bool? Function()? enabled}) { return InvoiceInstallmentsCard(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoiceInstallmentsCard &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'InvoiceInstallmentsCard(enabled: $enabled)'; } 
 }
