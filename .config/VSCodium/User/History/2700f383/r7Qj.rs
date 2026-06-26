fn main() {
    let numbers = vec![1, 2, 3, 4, 5];

    // map - transform every item
    let doubled: Vec<i32> = numbers.iter()
        .map(|x| x * 2)
        .collect();
    println!("{:?}", doubled);  // [2, 4, 6, 8, 10]

    // filter - keep only items that match
    let evens: Vec<&i32> = numbers.iter()
        .filter(|x| *x % 2 == 0)
        .collect();
    println!("{:?}", evens);  // [2, 4]

    // find - get first item that matches
    let first_big = numbers.iter()
        .find(|x| **x > 3);
    println!("{:?}", first_big);  // Some(4)
}