// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestControllerFeesPayer {const PostAccountsRequestControllerFeesPayer._(this.value);

factory PostAccountsRequestControllerFeesPayer.fromJson(String json) { return switch (json) {
  'account' => account,
  'application' => application,
  _ => PostAccountsRequestControllerFeesPayer._(json),
}; }

static const PostAccountsRequestControllerFeesPayer account = PostAccountsRequestControllerFeesPayer._('account');

static const PostAccountsRequestControllerFeesPayer application = PostAccountsRequestControllerFeesPayer._('application');

static const List<PostAccountsRequestControllerFeesPayer> values = [account, application];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestControllerFeesPayer && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestControllerFeesPayer($value)'; } 
 }
final class PostAccountsRequestControllerFees {const PostAccountsRequestControllerFees({this.payer});

factory PostAccountsRequestControllerFees.fromJson(Map<String, dynamic> json) { return PostAccountsRequestControllerFees(
  payer: json['payer'] != null ? PostAccountsRequestControllerFeesPayer.fromJson(json['payer'] as String) : null,
); }

final PostAccountsRequestControllerFeesPayer? payer;

Map<String, dynamic> toJson() { return {
  if (payer != null) 'payer': payer?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payer'}.contains(key)); } 
PostAccountsRequestControllerFees copyWith({PostAccountsRequestControllerFeesPayer Function()? payer}) { return PostAccountsRequestControllerFees(
  payer: payer != null ? payer() : this.payer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestControllerFees &&
          payer == other.payer; } 
@override int get hashCode { return payer.hashCode; } 
@override String toString() { return 'PostAccountsRequestControllerFees(payer: $payer)'; } 
 }
