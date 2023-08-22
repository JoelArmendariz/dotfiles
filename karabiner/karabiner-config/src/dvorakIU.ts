import { FromKeyParam, map, rule, writeToProfile } from "karabiner.ts";
import { DVORAK_QWERTY_MAP, MODIFIERS } from "./constants";
import { COMMON_REMAPS, SPECIAL_SYMBOLS_LAYER } from "./commonRemaps";

// Remap all alpha keys from QWERTY to DvorakIU
const DVORAK_ALPHAS_MANIPULATORS = Object.entries(DVORAK_QWERTY_MAP).reduce(
  (acc, [qwertyChar, dvorakChar]) => [
    ...acc,
    ...[
      map(qwertyChar as FromKeyParam).to(dvorakChar),
      ...MODIFIERS.map((modifier) =>
        map(qwertyChar as FromKeyParam, modifier).to(dvorakChar, modifier)
      ),
    ],
  ],
  [] as ReturnType<typeof map>[]
);

export default function writeDvorakIU() {
  writeToProfile("DVORAK_IU", [
    rule("Key mapping").manipulators([
      ...COMMON_REMAPS,
      ...DVORAK_ALPHAS_MANIPULATORS,
    ]),
    SPECIAL_SYMBOLS_LAYER,
  ]);
}
