import 'package:flutter_test/flutter_test.dart';
import 'package:e_book/Models/BookModel.dart';

void main() {
  group('BookModel Tests', () {
    // Test Case 1: Test JSON Serialization and Deserialization
    test('fromJson and toJson', () {
      final originalBook = BookModel(
        id: '1',
        title: 'The Test Book',
        description: 'A sample book for testing',
        rating: '4.5',
        pages: 200,
        language: 'English',
        audioLen: '5 hours',
        author: 'Test Author',
        aboutAuthor: 'About the Test Author',
        bookurl: 'https://example.com/book',
        audioUrl: 'https://example.com/audio',
        category: 'Testing',
        coverUrl: 'https://example.com/cover',
        price: 20,
        numberofRating: '100',
        genre: 'Test Genre',
      );

      // Convert the book to JSON
      final Map<String, dynamic> json = originalBook.toJson();

      // Create a new book by deserializing the JSON
      final deserializedBook = BookModel.fromJson(json);

      // Check if the original and deserialized books are equal
      expect(deserializedBook, equals(originalBook));
    });

    // Test Case 2: Test Getters and Setters
    test('Getters and Setters', () {
      final book = BookModel();

      // Set values using setters
      book.setId = '2';
      book.setTitle = 'Another Book';
      book.setDescription = 'Another sample book for testing';
      book.setRating = '3.8';
      book.setPages = 150;
      book.setLanguage = 'Spanish';
      book.setAudioLen = '4 hours';
      book.setAuthor = 'Another Author';
      book.setAboutAuthor = 'About Another Author';
      book.setBookUrl = 'https://example.com/another-book';
      book.setAudioUrl = 'https://example.com/another-audio';
      book.setCategory = 'Another Category';
      book.setCoverUrl = 'https://example.com/another-cover';
      book.setPrice = 15;
      book.setNumberofRating = '50';
      book.setGenre = 'Another Genre';

      // Check if values can be retrieved using getters
      expect(book.getId, equals('2'));
      expect(book.getTitle, equals('Another Book'));
      expect(book.getDescription, equals('Another sample book for testing'));
      expect(book.getRating, equals('3.8'));
      expect(book.getPages, equals(150));
      expect(book.getLanguage, equals('Spanish'));
      expect(book.getAudioLen, equals('4 hours'));
      expect(book.getAuthor, equals('Another Author'));
      expect(book.getAboutAuthor, equals('About Another Author'));
      expect(book.getBookUrl, equals('https://example.com/another-book'));
      expect(book.getAudioUrl, equals('https://example.com/another-audio'));
      expect(book.getCategory, equals('Another Category'));
      expect(book.getCoverUrl, equals('https://example.com/another-cover'));
      expect(book.getPrice, equals(15));
      expect(book.getNumberofRating, equals('50'));
      expect(book.getGenre, equals('Another Genre'));
    });
  });
}
