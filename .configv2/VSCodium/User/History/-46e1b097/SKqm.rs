fn is_adult(age: u32) -> u32 {
    if age >= 18 {
        0
    } else if age < 18 {
        1
    } else {
        2
    }
}

fn main() {
    let age = 20;

    if is_adult(age) == 0 {
        println!("you are an adult");
    } else if is_adult(age) == 1{
        println!("you are not an adult");
    }
}