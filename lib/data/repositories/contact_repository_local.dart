import 'package:contact_book/data/repositories/contact_repository.dart';
import 'package:contact_book/data/services/data_service.dart';
import 'package:contact_book/data/services/local/model/contact_hive_model.dart';
import 'package:contact_book/domain/models/contact_model.dart';

import '../../util/result.dart';

class ContactRepositoryLocal implements ContactRepository {
  ContactRepositoryLocal({required DataService service}) : _service = service;

  final DataService _service;
  @override
  Future<Result<void>> addContact(ContactModel contact) async {
    ContactHiveModel contactHiveModel = ContactHiveModel(
      name: contact.name,
      phoneNumber: contact.phoneNumber,
      memo: contact.memo,
    );

    //TODO
    _service.addContact(contactHiveModel);

    return Result.ok(null);
  }

  @override
  Future<Result<void>> deleteContact(ContactModel contact) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  Future<Result<List<ContactModel>>> getContacts() {
    // TODO: implement getContacts
    throw UnimplementedError();
  }

  @override
  Future<Result<ContactModel>> updateContact(ContactModel contact) {
    // TODO: implement updateContact
    throw UnimplementedError();
  }
}
