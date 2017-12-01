library table_row;

import 'dart:async';
import 'dart:html';

import 'package:angular_components/angular_components.dart';

import 'package:angular/angular.dart';

import 'package:angular_forms/angular_forms.dart';


@Component(
    selector: 'example',
    template: '''
    <div *ngFor="let task of tasks">
                <label for="fileInput">
                    <material-button>
                        Add image 
                    </material-button>
                </label>

          id: {{task['_tasknumber']}}

          <input type="file"
                id="fileInput"
                multiple
                #fileInput
                (change)="uploadFilesForTask(fileInput.files, task['_tasknumber'])"/>
    </div>
    ''',
    directives: const [
      NgIf,
      NgFor,
      NgClass,
      formDirectives,
      materialDirectives
    ],
    providers: const [
      materialProviders
    ])
class Example {
  List<Map<String, dynamic>> tasks = [
    {'_tasknumber': '1'},
    {'_tasknumber': '2'}
  ];

  Future<Null> uploadFilesForTask(List<File> files, String taskId) async {
    print(taskId);
  }
}
