fn is_adult(age: u32) -> u32 {
    if age < 13 {
        0
    } else if age < 18 {
        1
    } else {
        2
    }
}

fn main() {
    let age = 14;

    if is_adult(age) == 0 {
        println!("child");
    } else if is_adult(age) == 1{
        println!("teenager");
    } else {
        println!("adult");
    }
}