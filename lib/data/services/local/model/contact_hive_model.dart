import 'package:isar/isar.dart';

part 'contact_hive_model.g.dart';

@collection
class ContactHiveModel {
  ContactHiveModel({required this.phoneNumber, required this.name, this.memo});

  Id id = Isar.autoIncrement;
  final String phoneNumber;
  final String name;
  final String? memo;
}
