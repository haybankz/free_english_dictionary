# Free Dictionary API Wrapper in Dart

Check out
[Free dictionary API homepage](https://dictionaryapi.dev/)

## Getting Started

With Dart
```bash
dart pub add free_dictionary
dart pub get
```

With Flutter
```bash
flutter pub add free_dictionary
flutter pub get
```


## How to use

See [example](https://github.com/haybankz/free_dictionary/blob/main/example/free_dictionary_example.dart) for more usecase information.

```dart
void main() async {
  // get word meaning
  var meanings = FreeDictionary.getWordMeaning(word: "stairs");
  // print meanings
  print(meanings);
}
```
