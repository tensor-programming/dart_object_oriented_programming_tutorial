void main(List<String> args) {
  var chair = Chair("padded", 3);

  print(chair.age);
  print(chair.color);
  print(chair.name);
}

abstract class Thing {
  String name;
  int age;
  Thing(this.name, this.age);
  String get color;
}

class Chair extends Thing {
  Chair(String name, int age) : super(name, age);

  @override
  String get color => "Blue";
}

class A {
  int a;
  int b;
}

class B {
  int c;
}

class C implements A, B {
  @override
  int a;

  @override
  int b;

  @override
  int c;
}

// void main(List<String> args) {
//   var p1 = Point.fact('test');
//   p1.x = 30;
//   p1.y = 300;

//   print(p1.x);
//   print(p1.y);
//   print(p1.add);

//   p1.save();

//   var p3 = Point.fact('test');

//   print(p1.toString());
//   print(p3.toString());
//   print(p1 == p3);
//   print(p1.hashCode);
//   print(p3.hashCode);
// }

// class Point {
//   final String name;
//   int _x;
//   int _y;

//   int get x => _x;
//   int get y => _y;

//   int get add => _x + y;

//   void set x(val) {
//     _x = val;
//   }

//   void set y(val) {
//     _y = val;
//   }

//   static final Map<String, Point> _cache = <String, Point>{};

//   Point(this._x, this._y, {this.name});

//   Point.zero() : name = "zero" {
//     _x = 0;
//     _y = 0;
//   }

//   factory Point.fact(String name) {
//     if (_cache.containsKey(name)) {
//       return _cache[name];
//     } else {
//       final point = Point(0, 0, name: name);
//       _cache[name] = point;
//       return point;
//     }
//   }

//   void save() {
//     _cache[name] = Point(_x, _y, name: name);
//   }

//   int addTogether() {
//     return _x + _y;
//   }

//   @override
//   String toString() {
//     return "Point at ($_x, $_y) named: $name";
//   }

//   @override
//   bool operator ==(other) =>
//       other is Point && other._x == _x && other._y == _y && other.name == name;

//   @override
//   int get hashCode => super.hashCode;
// }

// Dart Dev SDK
// Windows: set DART_VM_OPTIONS=--preview-dart-2
// Linux/OSX: export DART_VM_OPTIONS=--preview-dart-2
