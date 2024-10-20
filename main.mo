import Int "mo:base/Int";
import Debug "mo:base/Debug";


actor calculator {

    var digit: Int = 0;
    public func summation(s: Int) : async Int {
        digit += s;
        digit
        //(Debug.print(debug_show (digit));)
    };

    public func substraction(s: Int) : async Int {
        digit -= s;
        digit;
    };

    public func multiplication(s: Int) : async Int {
        digit *= s;
        digit;
    };

    public func dividing(s: Int) : async ?Int {
        if (s == 0) {
            null
        } else {
            digit /= s;
            ?digit;
        }
    };

    public func clear() : async () {
        digit := 0;
    };

};