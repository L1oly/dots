fn main() {
    let base = 10;
    let bonus = 5;
    let res_add = |x| x + base + bonus;
    let add_x = res_add(3);
    println!("{}",add_x)
}