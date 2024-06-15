class Counter{
  int _counterValue = 0;
  int _totalclick = 0;

  int get value => _counterValue;
  int get clicks => _totalclick;

  void inCounter() => _counterValue++;
  void deCounter() => _counterValue--;
  void inClicker() => _totalclick++;
  
  void reset(){
    _counterValue = _totalclick = 0;
  }
}