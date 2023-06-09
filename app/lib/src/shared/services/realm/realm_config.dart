import 'package:realm/realm.dart';

import 'models/configuration_model.dart';
import 'models/task_model.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
    Task.schema,
    TaskBoard.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system'));
  },
  
  // schemaVersion: 2,
  // migrationCallback: (migration, oldSchemaVersion) {
  // },
);
