// GENERATED CODE - DO NOT MODIFY BY HAND

final class IamGrants {const IamGrants({this.read, this.write, });

factory IamGrants.fromJson(Map<String, dynamic> json) { return IamGrants(
  read: json['read'] as bool?,
  write: json['write'] as bool?,
); }

final bool? read;

final bool? write;

Map<String, dynamic> toJson() { return {
  'read': ?read,
  'write': ?write,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IamGrants copyWith({bool Function()? read, bool Function()? write, }) { return IamGrants(
  read: read != null ? read() : this.read,
  write: write != null ? write() : this.write,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IamGrants &&
          read == other.read &&
          write == other.write; } 
@override int get hashCode { return Object.hash(read, write); } 
@override String toString() { return 'IamGrants(read: $read, write: $write)'; } 
 }
