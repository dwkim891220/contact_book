import 'package:isar/isar.dart';

import 'model/contact_hive_model.dart';

class HiveDataService {
  HiveDataService(this._isar);

  final Isar _isar;

  Future<bool> addContact(ContactHiveModel contact) async {
    //TODO
    await _isar.writeTxn(() async {
      //await _isar.contacts.put(contact);
      return true;
    });

    return false;
  }

  Future<List<ContactHiveModel>> getContacts() {
    //TODO
    return Future.value(List.empty());
  }
}
