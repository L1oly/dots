

fn main() {
    let mut s = String::from("hello11");
    let a = &mut s;  // mutable borrow
    a.push_str(" world");
    s = "hellp";
    println!("{}", a);  // "hello world"
}