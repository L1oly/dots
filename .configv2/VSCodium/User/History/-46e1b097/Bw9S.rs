use std::thread::sleep;
use std::time::Duration;

fn sleepforval(){
    0
}

fn sec(){
    0
}

fn sleepfor(x: u64){
    sleep(Duration::from_secs(x))
}

fn code(){
    sleepforval = sleepforval + 1;
    sleepfor(sleepforval);
    sec = sec + sleepforval;
    println!("{}", sec);
}

fn cycle(x: i32){
    let mut sleepforval:u64 = 0;
    let mut sec:u64 = 0;
    for i in 0..x+1{code()}
}

fn main(){

    cycle(5);
}
