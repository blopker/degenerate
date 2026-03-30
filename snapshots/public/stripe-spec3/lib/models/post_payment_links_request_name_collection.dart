// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_links_request_name_collection_business.dart';import 'post_payment_links_request_name_collection_individual.dart';/// Controls settings applied for collecting the customer's name.
final class PostPaymentLinksRequestNameCollection {const PostPaymentLinksRequestNameCollection({this.business, this.individual, });

factory PostPaymentLinksRequestNameCollection.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestNameCollection(
  business: json['business'] != null ? PostPaymentLinksRequestNameCollectionBusiness.fromJson(json['business'] as Map<String, dynamic>) : null,
  individual: json['individual'] != null ? PostPaymentLinksRequestNameCollectionIndividual.fromJson(json['individual'] as Map<String, dynamic>) : null,
); }

final PostPaymentLinksRequestNameCollectionBusiness? business;

final PostPaymentLinksRequestNameCollectionIndividual? individual;

Map<String, dynamic> toJson() { return {
  if (business != null) 'business': business?.toJson(),
  if (individual != null) 'individual': individual?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'business', 'individual'}.contains(key)); } 
PostPaymentLinksRequestNameCollection copyWith({PostPaymentLinksRequestNameCollectionBusiness Function()? business, PostPaymentLinksRequestNameCollectionIndividual Function()? individual, }) { return PostPaymentLinksRequestNameCollection(
  business: business != null ? business() : this.business,
  individual: individual != null ? individual() : this.individual,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestNameCollection &&
          business == other.business &&
          individual == other.individual; } 
@override int get hashCode { return Object.hash(business, individual); } 
@override String toString() { return 'PostPaymentLinksRequestNameCollection(business: $business, individual: $individual)'; } 
 }
