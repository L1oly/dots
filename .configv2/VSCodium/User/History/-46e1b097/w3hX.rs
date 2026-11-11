fn is_adult(age: u32) -> bool {
    if age < 13 {
        println!("child");
    } else if age < 18 {
        println!("teenager");
    } else {
        println!("adult");
    }
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