#[derive(Debug, Clone, PartialEq)]
struct Player {
    name: String,
    health: u32,
}

fn main() {
    let p1 = Player { name: String::from("Alex"), health: 100 };
    let p2 = p1.clone();

    println!("{:?}", p1);        // debug print
    println!("{}", p1 == p2);    // true
}