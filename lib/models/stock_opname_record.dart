import 'package:hive/hive.dart';

part 'stock_opname_record.g.dart';

@HiveType(typeId: 11) // Pastikan typeId ini unik
class StockOpnameRecord extends HiveObject {
  @HiveField(0)
  DateTime date;

  @HiveField(1)
  String userId;

  @HiveField(2)
  String userName;

  @HiveField(3)
  List<StockOpnameItem> items; // Daftar item yang disesuaikan

  StockOpnameRecord({
    required this.date,
    required this.userId,
    required this.userName,
    required this.items,
  });
}

@HiveType(typeId: 12) // Pastikan typeId ini unik
class StockOpnameItem {
  @HiveField(0)
  String productId;

  @HiveField(1)
  String productName; // e.g., "Kopi (Susu)"

  @HiveField(2)
  int stockBefore;

  @HiveField(3)
  int stockAfter;

  @HiveField(4)
  int difference;

  StockOpnameItem({
    required this.productId,
    required this.productName,
    required this.stockBefore,
    required this.stockAfter,
    required this.difference,
  });
}
