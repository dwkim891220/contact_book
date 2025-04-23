import 'package:logging/logging.dart';

import '../../domain/models/contact_model.dart';
import '../../data/repositories/contact_repository.dart';
import '../../util/command.dart';
import '../../util/result.dart';

class HomeViewModel {
  HomeViewModel({required ContactRepository repository})
    : _repository = repository {
    load = CmdNoArg(_load)..execute();
    addContact = CmdArg<void, ContactModel>(_addContact);
  }

  final ContactRepository _repository;
  final _log = Logger('HomeViewModel');
  final List<ContactModel> _contacts = [];

  late CmdNoArg load;
  late CmdArg<void, ContactModel> addContact;

  List<ContactModel> get contacts => _contacts;

  Future<Result> _load() async {
    final result = await _repository.getContacts();

    switch (result) {
      case Ok<List<ContactModel>>():
        _log.fine('success');
        _contacts.addAll(result.value);
      case Error<List<ContactModel>>():
        _log.warning('fail');
    }

    return result;
  }

  Future<Result<void>> _addContact(ContactModel contact) async {
    final result = await _repository.addContact(contact);

    switch (result) {
      case Ok<void>():
        _log.fine('success');
        return result;
      case Error<void>():
        _log.warning('fail');
    }

    return result;
  }
}
