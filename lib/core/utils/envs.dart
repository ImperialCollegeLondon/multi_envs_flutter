import '../../amplifyconfiguration_dev.dart' as dev;
import '../../amplifyconfiguration_production.dart' as production;
import '../../amplifyconfiguration_staging.dart' as staging;

class Envs {
  static String amplifyconfig() {
    const flavor = String.fromEnvironment('flavor');
    if (flavor == 'production') {
      return production.amplifyconfig;
    } else if (flavor == 'staging') {
      return staging.amplifyconfig;
    } else {
      return dev.amplifyconfig;
    }
  }

  static String baseURL() {
    const flavor = String.fromEnvironment('flavor');
    if (flavor == 'production') {
      return production.baseURL;
    } else if (flavor == 'staging') {
      return staging.baseURL;
    } else {
      return dev.baseURL;
    }
  }
}
