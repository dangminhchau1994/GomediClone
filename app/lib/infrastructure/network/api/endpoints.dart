class Endpoints {
  Endpoints._();

  static const String devUrl =
      "http://gomedi-qa.eu-central-1.elasticbeanstalk.com/api";

  static const String prodUrl = "http://vps-5a2f7596.vps.ovh.net/api";

  static const String iconPrefix =
      'http://gomedi-qa.eu-central-1.elasticbeanstalk.com/api/files';

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;

  static const String authenticate = '/authenticate';

  static const String drugPriorities = '/drug-priorities';

  static const String drugTypes = '/drug-types';

  static const String drugIconTypes = '/drug-icon-types';

  static const String getDrugColors = '/color-types';

  static const String profile = '/profile-details';

  static const String drugProfiles = '/drug-profiles';

  static const String regiter = '/register';

  static const String getDrugs = '/drugs';

  static const String ean = '/ean';
}
