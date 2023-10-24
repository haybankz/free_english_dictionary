# Free Dictionary API Wrapper in Dart

Check out
[Free dictionary API homepage](https://dictionaryapi.dev/)

## Getting Started

```bash
git clone https://github.com/haybankz/free_dictionary.git && cd free_dictionary
```

```bash
flutter pub get
```


## How to use

See [example](example/free_dictionary_example.dart) for more usecase information.

```dart
void main() async {
  // get word meaning
  var meanings = FreeDictionary.getWordMeaning(word: "stairs");
  // print meanings
  print(meanings);
}
```
