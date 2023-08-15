import { NumberKeyValue, layer, map, withMapper } from "karabiner.ts";

// Remaps common to all layouts
export const COMMON_REMAPS = [
  map("⇪").to("left_control").toIfAlone("⎋"),
  map("left⌘").to("left⌘").toIfAlone("delete_or_backspace"),
];

// Useful for Karabiner definitions
export const SPECIAL_SYMBOLS_LAYER = layer("`", "symbol-mode").manipulators([
  //     / + [ 1    2    3    4    5 ] =>
  withMapper(["⌘", "⌥", "⌃", "⇧", "⇪"])((k, i) =>
    map((i + 1) as NumberKeyValue).toPaste(k)
  ),
  withMapper(["←", "→", "↑", "↓", "␣", "⏎", "⇥", "⎋", "⌫", "⌦", "⇪"])((k) =>
    map(k).toPaste(k)
  ),
]);
