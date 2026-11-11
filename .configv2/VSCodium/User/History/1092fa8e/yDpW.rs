
#[macro_use]
extern crate ini;

fn bepinex_start(){
    let location_default = "~/.local/share/Steam/steamapps/common/Hollow Knight Silksong/";
    let map = ini!("options.ini");
    let val = map["silksong_location"]["location"].clone().unwrap();
    println!("{}", val);
}

fn main() {
    bepinex_start()


}