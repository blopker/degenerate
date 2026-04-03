// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeEps {const SourceTypeEps({this.reference, this.statementDescriptor, });

factory SourceTypeEps.fromJson(Map<String, dynamic> json) { return SourceTypeEps(
  reference: json['reference'] as String?,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final String? reference;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference', 'statement_descriptor'}.contains(key)); } 
SourceTypeEps copyWith({String? Function()? reference, String? Function()? statementDescriptor, }) { return SourceTypeEps(
  reference: reference != null ? reference() : this.reference,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeEps &&
          reference == other.reference &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(reference, statementDescriptor); } 
@override String toString() { return 'SourceTypeEps(reference: $reference, statementDescriptor: $statementDescriptor)'; } 
 }
