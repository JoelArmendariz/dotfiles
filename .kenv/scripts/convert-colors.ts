// Menu: Convert Colors
// Description: Converts colors between rgb, hex, etc
// Author: John Lindquist
// Twitter: @johnlindquist

import "@johnlindquist/kit";

const convert = await npm("color-convert");

function createChoice(type: string, value: string, input: string) {
  return {
    name: type + ": " + value,
    value,
    html: `<div class="h-full w-full p-1 text-xs flex justify-center items-center font-bold" style="background-color:${input}">
      <span>${value}</span>
      </div>`,
  };
}

// Using a function with "input" allows you to generate values
const conversion = await arg("Enter color:", (input) => {
  if (input.startsWith("#")) {
    return ["rgb", "cmyk", "hsl"].map((type) => {
      let value = convert.hex[type](input).toString();
      return createChoice(type, value, input);
    });
  }

  // Two or more lowercase
  if (input.match(/^[a-z]{2,}/)) {
    return ["rgb", "hex", "cmyk", "hsl"]
      .map((type) => {
        try {
          let value = convert.keyword[type](input).toString();

          return createChoice(type, value, input);
        } catch (error) {
          return "";
        }
      })
      .filter(Boolean);
  }

  return [];
});

setSelectedText(conversion);
