fn is_adult(age: u32) -> bool {
    if age >= 18 {
        0
    } else {
        1
    }
}

fn main() {
    let age = 20;

    if is_adult(age) == 0 {
        println!("you are an adult");
    } else {
        println!("you are not an adult");
    }
}