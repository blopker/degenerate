// GENERATED CODE - DO NOT MODIFY BY HAND

final class SlurperCreateJobResponseResult {const SlurperCreateJobResponseResult({this.id});

factory SlurperCreateJobResponseResult.fromJson(Map<String, dynamic> json) { return SlurperCreateJobResponseResult(
  id: json['id'] as String?,
); }

final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
SlurperCreateJobResponseResult copyWith({String Function()? id}) { return SlurperCreateJobResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SlurperCreateJobResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SlurperCreateJobResponseResult(id: $id)'; } 
 }
