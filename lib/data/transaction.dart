import 'package:flutter/foundation.dart';

class Transaction {
  @required
  final String ? id;
  @required
  final String? name;
  @required
  final double? price;
  @required
  final DateTime? date;

  Transaction(this.id, this.name, this.price, this.date);
}
