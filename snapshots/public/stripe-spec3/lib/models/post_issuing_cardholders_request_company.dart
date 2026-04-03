// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Additional information about a `company` cardholder.
@immutable final class PostIssuingCardholdersRequestCompany {const PostIssuingCardholdersRequestCompany({this.taxId});

factory PostIssuingCardholdersRequestCompany.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersRequestCompany(
  taxId: json['tax_id'] as String?,
); }

final String? taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tax_id'}.contains(key)); } 
PostIssuingCardholdersRequestCompany copyWith({String Function()? taxId}) { return PostIssuingCardholdersRequestCompany(
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersRequestCompany &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersRequestCompany(taxId: $taxId)'; } 
 }
