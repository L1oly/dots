enum AgeGroup {
    Child,
    Teen,
    Adult,
}

fn is_adult(age: u32) -> u32 {
    if age < 13 {
        AgeGroup::Child
    } else if age < 18 {
        AgeGroup::Teen
    } else {
        AgeGroup::Adult
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