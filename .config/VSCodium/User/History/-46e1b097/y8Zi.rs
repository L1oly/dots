enum AgeGroup {
    Child,
    Teen,
    Adult,
}

fn is_adult(age: u32) -> AgeGroup {
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
    let group = get_age_group(age);

    match group {
        AgeGroup::Child =>    println!("child"),
        AgeGroup::Teen => println!("teenager"),
        AgeGroup::Adult =>    println!("adult"),
    }
}