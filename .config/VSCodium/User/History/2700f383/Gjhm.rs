

fn main() {
    let mut s = String::from("hello11");
    let a = &mut s;  // mutable borrow
    a.push_str(" world");
    s = String::from("hello11");
    println!("{}", a);  // "hello world"
}