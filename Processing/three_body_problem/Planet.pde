public class Planet {
    
    public float r;
    public float m;
    public Vektor p;
    public Vektor v;
    public Vektor a;
    private float G = 6.67408 * pow(10, 1);
    
    public Planet(float r, float m, Vektor p, Vektor v, Vektor a) {
        this.r = r;
        this.m = m;
        this.p = p;
        this.v = v;
        this.a = a;
    }
    
    public Planet(float r, float m, float x, float y) {
        this.r = r;
        this.m = m;
        this.p = new Vektor(x, y);
        this.v = new Vektor(0, 0);
        this.a = new Vektor(0, 0);
    }
    
    public void update(Planet alpha, Planet beta) {
        Vektor left = this.p.sub(alpha.p).mult( -G * alpha.m).div(pow(this.p.sub(alpha.p).mag(), 3));
        Vektor right = this.p.sub(beta.p).mult( -G * beta.m).div(pow(this.p.sub(beta.p).mag(), 3));
        this.a = left.add(right);
        this.v = this.v.add(this.a);
        this.p = this.p.add(this.v);
    }
    
    public void draw() {
        ellipse(this.p.x, this.p.y, this.r, this.r);
    }
    
    public void setRotationalVelocity(Vektor omega,  float cx, float cy) {
        Vektor r = this.p.sub(new Vektor(cx, cy));
        this.v = omega.cross(r);
    }
}
