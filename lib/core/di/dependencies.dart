import 'package:contact_book/data/repositories/contact_repository.dart';
import 'package:contact_book/data/repositories/contact_repository_local.dart';
import 'package:contact_book/data/services/data_service.dart';
import 'package:contact_book/data/services/local/hive_data_service.dart';
import 'package:contact_book/data/services/local/model/contact_hive_model.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initializeDependencies() async {
  final getIt = GetIt.instance;

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([ContactHiveModelSchema], directory: dir.path);

  getIt.registerSingleton<DataService>(HiveDataService(isar));
  getIt.registerSingleton<ContactRepository>(
    ContactRepositoryLocal(service: getIt.get<DataService>()),
  );
}
