float earth_mass = 5.972;
Planet p1, p2, p3;

void setup() {
    size(800, 600);
    p1 = new Planet(20, earth_mass, width / 2,height / 2);
    p2 = new Planet(20, earth_mass, width / 2 * (1 - cos(PI / 6)),height / 2 * (1 - sin(PI / 6)));
    p3 = new Planet(20, earth_mass, width / 2 * (1 + cos(PI / 6)),height / 2 * (1 - sin(PI / 6)));
    p1.setRotationalVelocity(new Vektor(1,0).mult(0.75984),width / 2,height / 2);
    p2.setRotationalVelocity(new Vektor(sin(PI / 6), -cos(PI / 6)).mult(0.75984),width / 2,height / 2);
    p3.setRotationalVelocity(new Vektor(sin(PI / 6),cos(PI / 6)).mult(0.75984),width / 2,height / 2);
}

void draw() {
    background(0);
    fill(255,255,0);
    p1.draw();
    p2.draw();
    p3.draw();
    Planet p1_legacy = new Planet(p1.r,p1.m,p1.p,p1.v,p1.a);
    Planet p2_legacy = new Planet(p2.r,p2.m,p2.p,p2.v,p2.a);
    Planet p3_legacy = new Planet(p3.r,p3.m,p3.p,p3.v,p3.a);
    p1.update(p2_legacy,p3_legacy);
    p2.update(p3_legacy,p1_legacy);
    p3.update(p1_legacy,p2_legacy);
    // noLoop();
}
