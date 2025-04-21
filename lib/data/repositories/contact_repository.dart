import '../../domain/models/contact_model.dart';

abstract class ContactRepository {
  Future<void> addContact(ContactModel contact);
  Future<void> updateContact(ContactModel contact);
  Future<void> deleteContact(ContactModel contact);
  Future<List<ContactModel>> getContacts();
}
