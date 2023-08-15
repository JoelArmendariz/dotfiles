import { FromKeyParam, ToKeyParam, map } from "karabiner.ts";
import { MODIFIERS } from "./constants";

export function mapWithAllModifiers(fromKey: FromKeyParam, toKey: ToKeyParam) {
  return [
    map(fromKey).to(toKey),
    ...MODIFIERS.map((modifier) => map(fromKey, modifier).to(toKey, modifier)),
  ];
}
