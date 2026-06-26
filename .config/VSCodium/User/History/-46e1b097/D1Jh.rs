fn is_adult(age: u32) -> bool {
    age >= 18 {true}

}

fn main() {
    let age = 20;

    if is_adult(age) {
        println!("you are an adult");
    } else {
        println!("you are not an adult");
    }
}