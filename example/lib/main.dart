import 'dart:io';

void main() {
  // Specify the paths to your index.html and manifest.json files
  final String indexPath = './web/index.html';
  final String manifestPath = './web/manifest.json';

  try {
    // Read the contents of the index.html file
    final File indexFile = File(indexPath);
    final String indexContents = indexFile.readAsStringSync();

    // Replace the contents of the index.html file
    final String newIndexContents = replaceIndexContents(indexContents);

    // Write the new contents to the index.html file
    indexFile.writeAsStringSync(newIndexContents);

    // Read the contents of the manifest.json file
    final File manifestFile = File(manifestPath);
    final String manifestContents = manifestFile.readAsStringSync();

    // Replace the contents of the manifest.json file
    final String newManifestContents = replaceManifestContents(manifestContents);

    // Write the new contents to the manifest.json file
    manifestFile.writeAsStringSync(newManifestContents);
  } catch (e) {
    print('Error: $e');
  }
}

String replaceIndexContents(String contents) {
  // Replace the contents of the index.html file here
  return contents.replaceAll('<title>My App</title>', '<title>My New App</title>');
}

String replaceManifestContents(String contents) {
  // Replace the contents of the manifest.json file here
  return contents.replaceAll('"name": "My App"', '"name": "My New App"');
}
