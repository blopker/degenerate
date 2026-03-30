// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SourceTransactionPaperCheckData {const SourceTransactionPaperCheckData({this.availableAt, this.invoices, });

factory SourceTransactionPaperCheckData.fromJson(Map<String, dynamic> json) { return SourceTransactionPaperCheckData(
  availableAt: json['available_at'] as String?,
  invoices: json['invoices'] as String?,
); }

/// Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
final String? availableAt;

/// Comma-separated list of invoice IDs associated with the paper check.
final String? invoices;

Map<String, dynamic> toJson() { return {
  'available_at': ?availableAt,
  'invoices': ?invoices,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'available_at', 'invoices'}.contains(key)); } 
SourceTransactionPaperCheckData copyWith({String Function()? availableAt, String Function()? invoices, }) { return SourceTransactionPaperCheckData(
  availableAt: availableAt != null ? availableAt() : this.availableAt,
  invoices: invoices != null ? invoices() : this.invoices,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTransactionPaperCheckData &&
          availableAt == other.availableAt &&
          invoices == other.invoices; } 
@override int get hashCode { return Object.hash(availableAt, invoices); } 
@override String toString() { return 'SourceTransactionPaperCheckData(availableAt: $availableAt, invoices: $invoices)'; } 
 }
