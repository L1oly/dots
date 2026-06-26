use serde::{Deserialize, Serialize};
use std::fs;
use std::process::exit;
use std::io;

#[derive(Debug, Clone, Serialize, Deserialize)]
struct Match {
    kills: u32,
    deaths: u32,
    assists: u32,
    headshots: u32,
    won: bool,
}

struct Tracker {
    matches: Vec<Match>,
}

impl Tracker {
    fn add_match(&mut self, m: Match){ 
        self.matches.push(m);
    }  
}

impl Match {
    fn kd(&self) -> f64 {
        if self.deaths == 0 {
            return self.kills as f64;
        }
        self.kills as f64 / self.deaths as f64
    }

    fn hs_percent(&self) -> f64 {
        if self.kills == 0 {
            return 0.0;
        }
        (self.headshots as f64 / self.kills as f64) * 100.0
    }
}

fn load() -> Vec<Match> {
    let text = match fs::read_to_string("cs2_stats.json") {
        Ok(data) => data,
        Err(_) => return Vec::new(),
    };
    match serde_json::from_str(&text) {
        Ok(matches) => matches,
        Err(_) => {println!("save file corrupted, fix or delete it"); 
    exit(1)}
    }
}
fn save(matches: &Vec<Match>) {
    let json = match serde_json::to_string(matches){
        Ok(text) => text,
        Err(_) => {
            println!("Error converting to JSON");
            return;
        }
    };
    match fs::write("cs2_stats.json", json) {
        Ok(data) => data,
        Err(_) => {println!("Error writing file")}
   }
}

fn input_u32() -> u32 {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let input = input.trim().parse().unwrap();
    input
}

fn input_bool() -> bool {
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    let input: bool = input.trim() == "y";
    input
}

fn stats(matches: &Vec<Match>){
    let total = matches.len() as f64;
    if total == 0.0 {
       println!("no matches yet");
       return;
    }
    let mut total_kills = 0;
    let mut total_deaths = 0;
    let mut total_kd: f64 = 0.0;
    let mut total_assists = 0;
    let mut total_headshots = 0;
    let mut total_hs_persent = 0.0;
    let mut total_wins = 0;
    

    for m in matches {
        total_kills += m.kills;
        total_deaths += m.deaths;
        total_kd += m.kd();
        total_assists += m.assists;
        total_headshots += m.headshots;
        total_hs_persent += m.hs_percent();
        if m.won { total_wins += 1; }
    }

    println!("matches played: {}", total);
    println!("avg kills: {:.2}", total_kills as f64 / total);
    println!("avg deaths: {:.2}", total_deaths as f64 / total);
    println!("avg K/D: {:.2}", total_kd as f64 / total);
    println!("avg assists: {:.2}", total_assists as f64 / total);
    println!("avg headshots: {:.2}", total_headshots as f64 / total);
    println!("avg headshot%: {:.2}", total_hs_persent as f64 / total);
    println!("avg win rate%: {:.2}", total_wins as f64 / total * 100.0);
}

fn history(matches: &Vec<Match>){
    for (i, m) in matches.iter().enumerate() {
        println!("Match {}", i+1);
        println!("Kills: {}", m.kills);
        println!("Deaths {}", m.deaths);
        println!("K/D {:.2}", m.kd());
        println!("Assists {}", m.assists);
        println!("Headshots {}", m.headshots);
        println!("Headshot% {:.2}", m.hs_percent());
        if m.won { 
            println!("Win"); 
        } else { println!("Loss"); }
    }
}

fn main() {
    let mut t = Tracker { matches: load(), };
    loop {
    println!("\nCommand (add/stats/history/quit):");
    let mut input = String::new();
    io::stdin().read_line(&mut input).unwrap();
    
    match input.trim() {
        "add" =>     { 
                println!("Kills: ");
                let kills = input_u32();
                println!("Deaths: ");
                let deaths = input_u32();
                println!("Assists: ");
                let assists = input_u32();
                println!("Headshots: ");
                let headshots = input_u32();
                println!("Won? (y/n): ");
                let won = input_bool();
                let m = Match { kills, deaths, assists, headshots, won};
                t.add_match(m);
                save(&t.matches)
        }
        "stats" =>   { stats(&t.matches); }
        "history" => { history(&t.matches); }
        "quit" =>    { break; }
        _ =>         { println!("unknown command"); }
    }
    }
}
