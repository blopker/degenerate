// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2 {const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2._(this.value);

factory EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2._(json),
}; }

static const EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2 $empty = EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2._('');

static const List<EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2($value)'; } 
 }
typedef EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescription = OneOf2<String,EnhancedEvidenceVisaCompellingEvidence3PriorUndisputedTransactionsProductDescriptionVariant2>;