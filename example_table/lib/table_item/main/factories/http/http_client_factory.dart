import '../../../../data/http/http.dart';
import 'package:http/http.dart';

import '../../../../infra/infra.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());