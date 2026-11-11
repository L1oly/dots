fn add_exclamation(s: &mut String) {
    s.push_str("!!!");
}

fn main() {
    let mut s = String::from("hello");
    println!("before: {}", s);
    add_exclamation(&mut s);
    println!("after: {}", s);
}