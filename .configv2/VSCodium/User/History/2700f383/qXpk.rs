fn find_player(players: &Vec<String>, name: &str) -> Option<usize> {
    for i in 0..players.len() {
        if players[i] == name {
            return Some(i);  // found it, return the index
        }
    }
    None  // not found
}

fn main() {
    let players = vec![
        String::from("Alex"),
        String::from("Bob"),
        String::from("Eve"),
    ];

    let result = find_player(&players, "Bob");

    match result {
        Some(index) => println!("found Bob at index {}", index),
        None =>        println!("player not found"),
    }

    // try a missing player
    let result2 = find_player(&players, "John");

    match result2 {
        Some(index) => println!("found John at index {}", index),
        None =>        println!("player not found"),
    }
}