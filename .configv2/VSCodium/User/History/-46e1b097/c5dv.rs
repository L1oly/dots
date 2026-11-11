use std::thread::sleep;
use std::time::Duration;

fn sleepfor(x: u64){
    sleep(Duration::from_secs(x))
}

fn code(x: i32){
    let mut sleepforval:u64 = 0;
    let mut sec:u64 = 0;
    for i in 0..x+1{
        sleepforval = sleepforval + 1;
        sleepfor(sleepforval);
        sec = sec + sleepforval;
        println!("{}", sec);
    }
}

fn main(){
    code(5);
}
