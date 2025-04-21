import 'package:contact_book/data/repositories/contact_repository.dart';
import 'package:contact_book/data/services/local/model/contact_hive_model.dart';
import 'package:contact_book/domain/models/contact_model.dart';

import '../services/local/hive_data_service.dart';

class ContactRepositoryLocal implements ContactRepository {
  ContactRepositoryLocal({required HiveDataService service})
    : _service = service;

  final HiveDataService _service;
  @override
  Future<void> addContact(ContactModel contact) async {
    ContactHiveModel contactHiveModel = ContactHiveModel(
      name: contact.name,
      phoneNumber: contact.phoneNumber,
      memo: contact.memo,
    );

    //TODO
    _service.addContact(contactHiveModel);
  }

  @override
  Future<void> deleteContact(ContactModel contact) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  Future<List<ContactModel>> getContacts() {
    // TODO: implement getContacts
    throw UnimplementedError();
  }

  @override
  Future<void> updateContact(ContactModel contact) {
    // TODO: implement updateContact
    throw UnimplementedError();
  }
}
