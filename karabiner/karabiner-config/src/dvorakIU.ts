import { FromKeyParam, map, rule, writeToProfile } from "karabiner.ts";
import { DVORAK_QWERTY_MAP } from "./constants";
import { COMMON_REMAPS, SPECIAL_SYMBOLS_LAYER } from "./commonRemaps";

// Remap all alpha keys from QWERTY to DvorakIU
const DVORAK_ALPHAS_MANIPULATORS = Object.entries(DVORAK_QWERTY_MAP).reduce(
  (acc, [qwertyChar, dvorakChar]) => [
    ...acc,
    ...[
      map(qwertyChar as FromKeyParam).to(dvorakChar),
      map(qwertyChar as FromKeyParam, "right_shift").to(
        dvorakChar,
        "right_shift"
      ),
      map(qwertyChar as FromKeyParam, "left_shift").to(
        dvorakChar,
        "left_shift"
      ),
    ],
  ],
  [] as ReturnType<typeof map>[]
);

export default function writeDvorakIU() {
  writeToProfile("DVORAK_IU", [
    rule("Key mapping").manipulators([
      // ...COMMON_REMAPS,
      ...DVORAK_ALPHAS_MANIPULATORS,
    ]),
    // SPECIAL_SYMBOLS_LAYER,
  ]);
}
