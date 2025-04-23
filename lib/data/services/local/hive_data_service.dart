import 'package:contact_book/data/services/data_service.dart';
import 'package:isar/isar.dart';

import 'model/contact_hive_model.dart';

class HiveDataService implements DataService {
  HiveDataService(this._isar);

  final Isar _isar;

  @override
  Future<bool> addContact(ContactHiveModel contact) {
    // TODO: implement addContact

    //TODO
    // await _isar.writeTxn(() async {
    //   //await _isar.contacts.put(contact);
    //   return true;
    // });
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteContact(int id) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  Future<List<ContactHiveModel>> getContacts() {
    // TODO: implement getContacts
    throw UnimplementedError();
  }
}
