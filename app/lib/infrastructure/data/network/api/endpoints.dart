class Endpoints {
  Endpoints._();

  static const String devUrl =
      "http://gomedi-qa.eu-central-1.elasticbeanstalk.com/api";

  static const String prodUrl = "http://vps-5a2f7596.vps.ovh.net/api/";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 15000;
}
