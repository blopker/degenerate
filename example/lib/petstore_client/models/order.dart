// GENERATED CODE - DO NOT MODIFY BY HAND

/// Order Status
final class OrderStatus {const OrderStatus._(this.value);

factory OrderStatus.fromJson(String json) { return switch (json) {
  'placed' => placed,
  'approved' => approved,
  'delivered' => delivered,
  _ => OrderStatus._(json),
}; }

static const OrderStatus placed = OrderStatus._('placed');

static const OrderStatus approved = OrderStatus._('approved');

static const OrderStatus delivered = OrderStatus._('delivered');

static const List<OrderStatus> values = [placed, approved, delivered];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrderStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrderStatus($value)'; } 
 }
final class Order {const Order({this.id, this.petId, this.quantity, this.shipDate, this.status, this.complete, });

factory Order.fromJson(Map<String, dynamic> json) { return Order(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  petId: json['petId'] != null ? (json['petId'] as num).toInt() : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  shipDate: json['shipDate'] != null ? DateTime.parse(json['shipDate'] as String) : null,
  status: json['status'] != null ? OrderStatus.fromJson(json['status'] as String) : null,
  complete: json['complete'] as bool?,
); }

final int? id;

final int? petId;

final int? quantity;

final DateTime? shipDate;

/// Order Status
final OrderStatus? status;

final bool? complete;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'petId': ?petId,
  'quantity': ?quantity,
  if (shipDate != null) 'shipDate': shipDate?.toIso8601String(),
  if (status != null) 'status': status?.toJson(),
  'complete': ?complete,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Order copyWith({int Function()? id, int Function()? petId, int Function()? quantity, DateTime Function()? shipDate, OrderStatus Function()? status, bool Function()? complete, }) { return Order(
  id: id != null ? id() : this.id,
  petId: petId != null ? petId() : this.petId,
  quantity: quantity != null ? quantity() : this.quantity,
  shipDate: shipDate != null ? shipDate() : this.shipDate,
  status: status != null ? status() : this.status,
  complete: complete != null ? complete() : this.complete,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Order &&
          id == other.id &&
          petId == other.petId &&
          quantity == other.quantity &&
          shipDate == other.shipDate &&
          status == other.status &&
          complete == other.complete; } 
@override int get hashCode { return Object.hash(id, petId, quantity, shipDate, status, complete); } 
@override String toString() { return 'Order(id: $id, petId: $petId, quantity: $quantity, shipDate: $shipDate, status: $status, complete: $complete)'; } 
 }
