const addA = (s: string) => s + "a";
const addB = (s: string) => s + "b";
const addC = (s: string) => s + "c";

const processors = [addA, addB, addC];
const value = "something";

const result = processors.reduce((acc, processor) => processor(acc), value);

console.log(result);
