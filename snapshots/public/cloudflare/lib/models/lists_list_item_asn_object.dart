// GENERATED CODE - DO NOT MODIFY BY HAND

/// Defines a non-negative 32 bit integer.
extension type const ListsItemAsn(int value) {
factory ListsItemAsn.fromJson(num json) => ListsItemAsn(json.toInt());

num toJson() => value;

}
final class ListsListItemAsnObject {const ListsListItemAsnObject({required this.asn});

factory ListsListItemAsnObject.fromJson(Map<String, dynamic> json) { return ListsListItemAsnObject(
  asn: ListsItemAsn.fromJson(json['asn'] as num),
); }

/// Defines a non-negative 32 bit integer.
final ListsItemAsn asn;

Map<String, dynamic> toJson() { return {
  'asn': asn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn'); } 
ListsListItemAsnObject copyWith({ListsItemAsn? asn}) { return ListsListItemAsnObject(
  asn: asn ?? this.asn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemAsnObject &&
          asn == other.asn; } 
@override int get hashCode { return asn.hashCode; } 
@override String toString() { return 'ListsListItemAsnObject(asn: $asn)'; } 
 }
