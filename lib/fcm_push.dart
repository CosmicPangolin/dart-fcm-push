/*
 * Copyright (c) 2017, Michael Mitterer (office@mikemitterer.at),
 * IT-Consulting and Development Limited.
 *
 * All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/// This is an awesome library. More dartdocs go here.
library fcm_push;

import 'dart:async';
import 'package:node_http/node_http.dart' as http;
import 'package:http/http.dart' as old_http;
import 'dart:convert';
import 'package:tuple/tuple.dart';
import 'package:validate/validate.dart';
import 'package:http_utils/http_utils.dart';
import 'package:logging/logging.dart';
import 'package:ansicolor/ansicolor.dart';

export 'package:tuple/tuple.dart';


part 'fcm_push/fcm.dart';
part 'fcm_push/exception.dart';
part 'fcm_push/Message.dart';

/// prettyPrint for JSON
const JsonEncoder _PRETTYJSON = const JsonEncoder.withIndent('   ');

/// Define some Pens to use it everywhere
final AnsiPen _penGreen = new AnsiPen()..green();
final AnsiPen _penInfo = new AnsiPen()..blue();

