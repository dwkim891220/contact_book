import '../../domain/models/contact_model.dart';
import '../../util/result.dart';

abstract class ContactRepository {
  Future<Result<void>> addContact(ContactModel contact);
  Future<Result<void>> updateContact(ContactModel contact);
  Future<Result<void>> deleteContact(ContactModel contact);
  Future<Result<List<ContactModel>>> getContacts();
}
