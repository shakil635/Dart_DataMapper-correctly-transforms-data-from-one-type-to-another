/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_generic_data_mapper_base.dart';

// TODO: Export any libraries intended for clients of this package.

class DataMapper<T, U> {
  U Function(T) x;
  DataMapper(this.x);

  U map(T data) {
    return x(data);
  }
}
/*
Practice Question 3: Generic Data Mapper
Question:
Create a generic class DataMapper<T, U> with 
a constructor that takes a function 
U Function(T) as an argument.
Implement a method U map(T data) that 
applies the function to data and returns the result.
Ensure the mapper can handle different data 
types and transformations.
 */