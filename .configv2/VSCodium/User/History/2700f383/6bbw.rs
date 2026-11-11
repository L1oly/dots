fn largest<T: PartialOrd>(list: &Vec<T>) -> &T {
    let mut largest = &list[0];
    for item in list {
        if item > largest {
            largest = item;
        }
    }
    largest
}

fn main() {
    let numbers = vec![10, 5, 80, 3, 42];
    let words = vec!["banana", "apple", "cherry"];

    println!("largest number: {}", largest(&numbers));
    println!("largest word: {}", largest(&words));
}