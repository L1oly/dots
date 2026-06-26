use std::thread::sleep;
use std::time::Duration;

fn sleepfor(x: u64) -> u64{
    sleep(Duration::from_secs(x))
}

fn cycle(x: i32){
    for i in 0..x+1{}
}
fn main(){
    cycle(1);
    let mut sec = 0;
    sec = sec + sleepfor(1);
    println!(sec);
}