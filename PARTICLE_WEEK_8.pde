class ParticleSystem {
  float x; 
  float y;
  ArrayList<guppy> p;

  ParticleSystem(float _x, float _y) {
    p = new ArrayList<guppy>();
    x = _x;
    y = _y;
  }

  void update() {
    guppy b = new guppy(x, y);
    p.add(b);

    for (int i = p.size()-1; i >= 0; i--) {
      guppy temp = p.get(i);
      temp.update();
      temp.display();
      if (temp.life < 0) {
        p.remove(i);
      }
    }
  }
}