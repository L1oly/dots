fn read(s: &String) {           // just reading
    println!("{}", s);
}

fn modify(s: &mut String) {     // redacting/changing
    s.push_str(" world");
}

fn main() {
    let mut s = String::from("hello");
    
    read(&s);         // read it
    modify(&mut s);   // change it
    read(&s);         // read the new value
}