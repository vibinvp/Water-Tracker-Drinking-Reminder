
import 'package:hive/hive.dart';
//part 'Details.g.dart';
 part 'model.g.dart';
@HiveType(typeId: 0)

 class Detailsmodel extends HiveObject{
  @HiveField(0)
  final DateTime createdDate;
  @HiveField(1)
  final double value;
Detailsmodel({required this.createdDate, required this.value});
 }
 
