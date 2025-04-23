import 'local/model/contact_hive_model.dart';

abstract class DataService {
  Future<List<ContactHiveModel>> getContacts();
  Future<bool> addContact(ContactHiveModel contact);
  Future<bool> deleteContact(int id);
}
