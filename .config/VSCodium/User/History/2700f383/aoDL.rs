enum Direction {
    North,
    South,
    East,
    West,
}

fn move_player(p: &mut Player, dir: Direction) {
    match dir {
        Direction::North => println!("{} moves north", p.name),
        Direction::South => println!("{} moves south", p.name),
        Direction::East =>  println!("{} moves east", p.name),
        Direction::West =>  println!("{} moves west", p.name),
    }
}
struct Player {
    name: String,
    health: u32,
    level: u32,
    is_alive: bool,
}

fn print_player(p: &Player) {
    println!("name: {}", p.name);
    println!("health: {}", p.health);
    println!("level: {}", p.level);
    println!("alive: {}", p.is_alive);
}

fn main() {
    let mut player = Player {
        name: String::from("Alex"),
        health: 100,
        level: 1,
        is_alive: true,
    };

    print_player(&player);

    player.health = 50;
    println!("after taking damage: {}", player.health);
    move_player(&mut player, Direction::North);
}