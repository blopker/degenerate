// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class IssuingNetworkTokenVisa {const IssuingNetworkTokenVisa({required this.cardReferenceId, required this.tokenReferenceId, required this.tokenRequestorId, this.tokenRiskScore, });

factory IssuingNetworkTokenVisa.fromJson(Map<String, dynamic> json) { return IssuingNetworkTokenVisa(
  cardReferenceId: json['card_reference_id'] as String,
  tokenReferenceId: json['token_reference_id'] as String,
  tokenRequestorId: json['token_requestor_id'] as String,
  tokenRiskScore: json['token_risk_score'] as String?,
); }

/// A unique reference ID from Visa to represent the card account number.
final String cardReferenceId;

/// The network-unique identifier for the token.
final String tokenReferenceId;

/// The ID of the entity requesting tokenization, specific to Visa.
final String tokenRequestorId;

/// Degree of risk associated with the token between `01` and `99`, with higher number indicating higher risk. A `00` value indicates the token was not scored by Visa.
final String? tokenRiskScore;

Map<String, dynamic> toJson() { return {
  'card_reference_id': cardReferenceId,
  'token_reference_id': tokenReferenceId,
  'token_requestor_id': tokenRequestorId,
  'token_risk_score': ?tokenRiskScore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('card_reference_id') && json['card_reference_id'] is String &&
      json.containsKey('token_reference_id') && json['token_reference_id'] is String &&
      json.containsKey('token_requestor_id') && json['token_requestor_id'] is String; } 
IssuingNetworkTokenVisa copyWith({String? cardReferenceId, String? tokenReferenceId, String? tokenRequestorId, String Function()? tokenRiskScore, }) { return IssuingNetworkTokenVisa(
  cardReferenceId: cardReferenceId ?? this.cardReferenceId,
  tokenReferenceId: tokenReferenceId ?? this.tokenReferenceId,
  tokenRequestorId: tokenRequestorId ?? this.tokenRequestorId,
  tokenRiskScore: tokenRiskScore != null ? tokenRiskScore() : this.tokenRiskScore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingNetworkTokenVisa &&
          cardReferenceId == other.cardReferenceId &&
          tokenReferenceId == other.tokenReferenceId &&
          tokenRequestorId == other.tokenRequestorId &&
          tokenRiskScore == other.tokenRiskScore; } 
@override int get hashCode { return Object.hash(cardReferenceId, tokenReferenceId, tokenRequestorId, tokenRiskScore); } 
@override String toString() { return 'IssuingNetworkTokenVisa(cardReferenceId: $cardReferenceId, tokenReferenceId: $tokenReferenceId, tokenRequestorId: $tokenRequestorId, tokenRiskScore: $tokenRiskScore)'; } 
 }
