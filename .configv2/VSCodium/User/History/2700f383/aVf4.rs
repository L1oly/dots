fn print_name(s: String) {
    println!("{}", s);
}

fn main() {
    let name = String::from("Alex");
    print_name(name);         // ownership moves into function
    println!("{}", name);     // ERROR - name is gone
}