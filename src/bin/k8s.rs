use std::thread;
use std::time::Duration;

fn main() {
    let mut elapsed_time: u64 = 0;
    loop {
        println!("Hello, world! {} seconds", elapsed_time);
        thread::sleep(Duration::from_secs(15));
        elapsed_time += 15;
    }
}
