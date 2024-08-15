import 'dart:io';

void main(List<String> arguments) {
  if (arguments.length < 2) {
    print('Usage: flutter_cli <project_name> <destination_path>');
    exit(1);
  }
  final currentDir = Platform.script.toFilePath().split('bin')[0];
  final projectName = arguments[0];
  final destinationPath = arguments[1];
  final templateDir = Directory('$currentDir/bin/templates/clean_arch_template');
  final newProjectDir = Directory('$destinationPath/$projectName');

  if (newProjectDir.existsSync()) {
    print('Error: Directory "$projectName" already exists.');
    exit(1);
  }

  newProjectDir.createSync(recursive: true);

  copyDirectory(templateDir, newProjectDir);

  _replaceProjectName(newProjectDir, 'clean_arch_template', projectName);

  print('Project "$projectName" created successfully at: ${newProjectDir.absolute.path}');

}

void copyDirectory(Directory source, Directory destination) {
  source.listSync(recursive: false).forEach((entity) {
    if (entity is Directory) {
      var newDirectory = Directory('${destination.path}/${entity.path.split('/').last}');
      newDirectory.createSync();
      copyDirectory(entity, newDirectory);
    } else if (entity is File) {
      var newFile = File('${destination.path}/${entity.path.split('/').last}');
      newFile.writeAsBytesSync(entity.readAsBytesSync());
    }
  });
}

void _replaceProjectName(Directory dir, String oldName, String newName) {
  final textFileExtensions = ['.dart', '.yaml', '.json', '.txt', '.md', '.html', '.css', '.gradle', '.xml', '.plist'];

  for (var entity in dir.listSync(recursive: true)) {
    if (entity is File) {
      final extension = entity.path.split('.').last;
      if (textFileExtensions.contains('.$extension')) {
        try {
          final content = entity.readAsStringSync();
          final updatedContent = content.replaceAll(oldName, newName);
          entity.writeAsStringSync(updatedContent);
        } catch (e) {
          print('Error processing file: ${entity.path}, $e');
        }
      }
    }
  }
}