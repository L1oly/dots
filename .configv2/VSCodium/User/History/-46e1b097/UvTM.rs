fn is_adult(age: u32) -> bool {
    if age >= 18 {
        true
    } else {
        false
    }
}

fn main() {
    let age = 15;

    if is_adult(age) {
        println!("you are an adult");
    } else {
        println!("you are not an adult");
    }
}