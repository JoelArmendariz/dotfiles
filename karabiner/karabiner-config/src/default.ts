import { simlayer, map, rule, writeToProfile } from "karabiner.ts";
import { COMMON_REMAPS, SPECIAL_SYMBOLS_LAYER } from "./commonRemaps";

export default function writeDefault() {
  writeToProfile("Default", [
    SPECIAL_SYMBOLS_LAYER,

    rule("Key mapping").manipulators([
      ...COMMON_REMAPS,
      map("/").to("left_shift").toIfAlone("/"),
      map(";").to(";", "right_shift"),
      map(";", "left_shift").to(";"),
    ]),

    rule("Right Command Meta Layer").manipulators([
      // Tmux prefix (Ctrl+b) + window numbers
      map("x", "right_command").to("b", "left_control").to("1"),
      map("c", "right_command").to("b", "left_control").to("2"),
      map("v", "right_command").to("b", "left_control").to("3"),
      map("b", "right_command").to("b", "left_control").to("4"),
      // Tmux prefix + navigation/commands
      map("s", "right_command").to("b", "left_control").to("s"),
      map("d", "right_command").to("b", "left_control").to("d"),
      map("h", "right_command").to("b", "left_control").to("h"),
      map("j", "right_command").to("b", "left_control").to("j"),
      map("k", "right_command").to("b", "left_control").to("k"),
      map("l", "right_command").to("b", "left_control").to("l"),
      map("n", "right_command").to("b", "left_control").to("0", "left_shift"), // next session
      map("p", "right_command").to("b", "left_control").to("9", "left_shift"), // previous session
      // Ctrl + numbers (for other app shortcuts)
      map("q", "right_command").to("1", "left_control"),
      map("w", "right_command").to("2", "left_control"),
      map("e", "right_command").to("3", "left_control"),
      map("r", "right_command").to("4", "left_control"),
      map("t", "right_command").to("5", "left_control"),
      map("y", "right_command").to("6", "left_control"),
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
