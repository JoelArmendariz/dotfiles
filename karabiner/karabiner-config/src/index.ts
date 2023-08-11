import {
  layer,
  map,
  NumberKeyValue,
  rule,
  simlayer,
  withMapper,
  writeToProfile,
} from "karabiner.ts";

// ! Change '--dry-run' to your Karabiner-Elements Profile name.
// (--dry-run print the config json into console)
// + Create a new profile if needed.
writeToProfile("Default", [
  layer("`", "symbol-mode").manipulators([
    //     / + [ 1    2    3    4    5 ] =>
    withMapper(["⌘", "⌥", "⌃", "⇧", "⇪"])((k, i) =>
      map((i + 1) as NumberKeyValue).toPaste(k)
    ),
    withMapper(["←", "→", "↑", "↓", "␣", "⏎", "⇥", "⎋", "⌫", "⌦", "⇪"])((k) =>
      map(k).toPaste(k)
    ),
  ]),

  simlayer("⎋").manipulators([
    map("w").to(2, "right_shift"),
    map("e").to(3, "right_shift"),
    map("r").to("\\", "right_shift"),
    map("t").to("]"),
    map("y").to("["),
    map("u").to(9, "left_shift"),
    map("i").to(0, "left_shift"),
    map("o").to("[", "left_shift"),
    map("p").to("]", "left_shift"),

    map("a").to(1, "right_shift"),
    map("s").to("/", "right_shift"),
    map("d").to("/", "right_shift"),
    map("f").to("/", "right_shift"),
    map("g").to("/", "right_shift"),
    map("h").to("←"),
    map("j").to("↓"),
    map("k").to("↑"),
    map("l").to("→"),
    map("/").to(";"),
    map("m").to(",", "left_shift"),
    map(",").to("="),
    map(".").to(".", "left_shift"),
  ]),

  rule("Key mapping").manipulators([
    // config key mappings
    map("⇪").to("left_control").toIfAlone("⎋"),
    map("⇪").to("⎋"),
    map("/").to("left_shift").toIfAlone("/"),
    map("left⌘").to("left⌘").toIfAlone("delete_or_backspace"),
    map(";").to(";", "right_shift"),
    map(";", "left_shift").to(";"),
  ]),
]);
