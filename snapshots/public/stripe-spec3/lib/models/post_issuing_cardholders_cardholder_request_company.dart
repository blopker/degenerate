// GENERATED CODE - DO NOT MODIFY BY HAND

/// Additional information about a `company` cardholder.
final class PostIssuingCardholdersCardholderRequestCompany {const PostIssuingCardholdersCardholderRequestCompany({this.taxId});

factory PostIssuingCardholdersCardholderRequestCompany.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequestCompany(
  taxId: json['tax_id'] as String?,
); }

final String? taxId;

Map<String, dynamic> toJson() { return {
  'tax_id': ?taxId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostIssuingCardholdersCardholderRequestCompany copyWith({String Function()? taxId}) { return PostIssuingCardholdersCardholderRequestCompany(
  taxId: taxId != null ? taxId() : this.taxId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestCompany &&
          taxId == other.taxId; } 
@override int get hashCode { return taxId.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestCompany(taxId: $taxId)'; } 
 }
