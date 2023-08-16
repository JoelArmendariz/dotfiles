import { simlayer, map, rule, writeToProfile } from "karabiner.ts";
import { COMMON_REMAPS, SPECIAL_SYMBOLS_LAYER } from "./commonRemaps";

export default function writeDefault() {
  writeToProfile("Default", [
    SPECIAL_SYMBOLS_LAYER,

    rule("Key mapping").manipulators([
      ...COMMON_REMAPS,
      map("/").to("left_shift").toIfAlone("/"),
      // map(";").to(";", "right_shift"),
      // map(";", "left_shift").to(";"),
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
  ]);
}
