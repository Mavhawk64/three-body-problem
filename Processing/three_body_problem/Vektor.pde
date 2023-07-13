public class Vektor {
    public float x;
    public float y;
    public float z;
    public Vektor(float x, float y, float z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    
    public Vektor() {
        this(0, 0, 0);
    }
    
    public Vektor(Vektor v) {
        this(v.x, v.y, v.z);
    }
    
    public Vektor(float x, float y) {
        this(x, y, 0);
    }
    
    public Vektor add(Vektor v) {
        return new Vektor(x + v.x, y + v.y, z + v.z);
    }
    
    public Vektor sub(Vektor v) {
        return new Vektor(x - v.x, y - v.y, z - v.z);
    }
    
    public Vektor mult(float f) {
        return new Vektor(x * f, y * f, z * f);
    }
    
    public Vektor div(float f) {
        return new Vektor(x / f, y / f, z / f);
    }
    
    public float mag() {
        return sqrt(x * x + y * y + z * z);
    }
    
    public Vektor cross(Vektor v) {
        return new Vektor(y * v.z - z * v.y, z * v.x - x * v.z, x * v.y - y * v.x);
    }
    
    @Override
    public String toString() {
        return "{ " + "" + x + ", " + y + ", " + z + " }";
    }
}
