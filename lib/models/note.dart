

 class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  // constructor that helps make to the class an object
  Note(this._title, this._date, this._priority, [this._description]);

  Note.withID(this._id, this._title, this._date, this._priority, [this._description]);

  // declaring the getter (red data)
  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

  // declaring the setters (write data)
  set title(String newtitle){
    this._title = newtitle;
  }

  set description(String describe){
    this._description = describe;
  }

  set date(String dates){
    this._date = dates;
  }

  set priority(int newPrior){
    if (newPrior >= 1 && newPrior <= 2){
      this._priority = newPrior;
    }
  }

  // convert note object to map object
  Map<String, dynamic> toMap(){

    var map = Map<String, dynamic> ();

    if (id != null){
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  // extract a note object from a map object
 Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
 }
 }