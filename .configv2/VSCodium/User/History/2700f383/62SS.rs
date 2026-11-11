

fn main() {
    let mut s = String::from("hello");
    let a = &mut s;  // mutable borrow
    a.push_str(" world");
    println!("{}", a);  // "hello world"
}