import {
  simlayer,
  map,
  NumberKeyValue,
  rule,
  withMapper,
  writeToProfile,
} from "karabiner.ts";

writeToProfile("Default", [
  // It is not required, but recommended to put symbol alias to layers,
  // (If you type fast, use simlayer instead, see https://evan-liu.github.io/karabiner.ts/rules/simlayer)
  // to make it easier to write '←' instead of 'left_arrow'.
  // Supported alias: https://github.com/evan-liu/karabiner.ts/blob/main/src/utils/key-alias.ts
  simlayer("`", "symbol-mode").manipulators([
    //     / + [ 1    2    3    4    5 ] =>
    withMapper(["⌘", "⌥", "⌃", "⇧", "⇪"])((k, i) =>
      map((i + 1) as NumberKeyValue).toPaste(k)
    ),
    withMapper(["←", "→", "↑", "↓", "␣", "⏎", "⇥", "⎋", "⌫", "⌦", "⇪"])((k) =>
      map(k).toPaste(k)
    ),
  ]),

  // simlayer("a", "").manipulators([
  //   map("h").to("←"),
  //   map("j").to("↓"),
  //   map("k").to("↑"),
  //   map("l").to("→"),
  // ]),

  rule("Key mapping").manipulators([
    // Mod-taps
    map("⇪").to("left_control").toIfAlone("⎋"),
    map("/").to("left_shift").toIfAlone("/"),

    // Remaps
    map(";").to(";", "left_shift"),
    map(";", "left_shift").to(";"),
  ]),
]);
