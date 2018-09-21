#![feature(plugin)]
#![plugin(rocket_codegen)]
#![feature(alloc_system)]

extern crate alloc_system;
extern crate rocket;
extern crate minifier;
extern crate rocket_contrib;
#[macro_use] extern crate serde_derive;

use rocket_contrib::Json;

#[derive(Deserialize)]
struct JsRequest {
    js_to_minify: String
}

#[post("/minify", format = "application/json", data = "<js_to_minify>")]
fn index(js_to_minify: Json<JsRequest>) -> String {
    let source_js = js_to_minify.js_to_minify.as_str();
    let result = minifier::js::minify(&source_js);
    return result;
}

fn main() {
    rocket::ignite().mount("/", routes![index]).launch();
}