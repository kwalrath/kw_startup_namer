// Copyright (c) 2017, kathyw. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'package:english_words/english_words.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  List<WordPair> names;

  @override
  void ngOnInit() {
    generateNames();
  }

  generateNames() {
    names = generateWordPairs().take(5).toList();
  }
}
