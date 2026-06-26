use std::thread::sleep;
use std::time::Duration;

fn sleepfor(x: u64){
    sleep(Duration::from_secs(x))
}

fn code(){
    let mut sleepforval:u64 = 0;
    let mut sec = 0;
    sleepforval = sleepforval + 1;
    sleepfor(sleepforval);
    sec = sec + sleepfor(1);
    println!("{}", sec);
}

fn cycle(x: i32){
    for i in 0..x+1{code()}
}

fn main(){

}